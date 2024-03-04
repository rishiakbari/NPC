import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:npc/screens/delivery_review_screen.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';

import '../utils/colorz.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({super.key});

  static const routeName = '/coupon-screen';

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      appBar: const CustomAppBar(
        title: "My Coupons",
      ),
      body: CustomSingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
                height: height * 0.50,
                child: SvgPicture.asset("assets/images/voucher.svg")),
            Container(
              decoration: BoxDecoration(
                color: Colorz.appBar,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You do not have coupons",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colorz.textSelection,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Go hunt for vouchers at Foodsss\nVoucher right away.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colorz.textSecondary,
                          ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    RoundedButtonWidget(
                      text: "Enter The Voucher",
                      textColor: Colorz.simpleText,
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(DeliveryReviewScreen.routeName);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
