import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:npc/screens/order_success_screen.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';

import '../utils/colorz.dart';

class DeliveryReviewScreen extends StatefulWidget {
  const DeliveryReviewScreen({super.key});

  static const routeName = '/delivery-review-screen';
  @override
  State<DeliveryReviewScreen> createState() => _DeliveryReviewScreenState();
}

class _DeliveryReviewScreenState extends State<DeliveryReviewScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      appBar: CustomAppBar(
        title: "Delivery Review",
      ),
      body: CustomSingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colorz.appBar,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "Please rate the quality of service\nfor the order",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colorz.textSelection, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colorz.main,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Your comments and suggestions help us\nimprove the service quality better!",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colorz.textSecondary,
                      ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: height * 0.18,
                  width: width * 0.80,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F1F5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Enter your note here",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colorz.textSecondary,
                          ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                RoundedButtonWidget(
                  text: "Submit",
                  textColor: Colorz.simpleText,
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(OrderSuccessScreen.routeName);
                  },
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
