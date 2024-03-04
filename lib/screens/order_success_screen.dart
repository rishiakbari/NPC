import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:npc/widgets/custom_rounded_button.dart';

import '../utils/colorz.dart';

class OrderSuccessScreen extends StatefulWidget {
  const OrderSuccessScreen({super.key});

  static const routeName = '/order-review-screen';

  @override
  State<OrderSuccessScreen> createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      body: Column(children: [
        LottieBuilder.asset("assets/lottie/order.json"),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          decoration: BoxDecoration(
            color: Colorz.appBar,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text(
                  "Order successful!",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colorz.textSelection, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Your order will be delivered on time.\nThank you!",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colorz.textSecondary),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                RoundedButtonWidget(
                  text: "View orders",
                  textColor: Colorz.simpleText,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 15.0,
                ),
                RoundedButtonWidget(
                  backgroundColor: Colorz.main.withOpacity(0.1),
                  text: "Continue Shopping",
                  textColor: Colorz.main,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
