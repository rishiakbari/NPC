import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';

import '../utils/colorz.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  static const routeName = '/success-screen';

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      body: CustomSingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 150.0,left: 15,right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Lottie.asset("assets/lottie/success.json"),
              ),
              const SizedBox(height: 100,),
              Container(
                  decoration: BoxDecoration(
                    color: Colorz.appBar,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(35,25,35,25),
                    child: Column(
                      children: [
                        Text(
                          "Account Created!",
                          style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colorz.textSelection,fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 15.0,),
                        Text(
                          "Your account had beed created\nsuccessfully.",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colorz.textSecondary),
                        ),
                        const SizedBox(height: 5.0,),
                        Text(
                          "Please sign in to use your account\nand enjoy.",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colorz.textSecondary),
                        ),
                        const SizedBox(height: 20.0,),
                        RoundedButtonWidget(
                          text: "Take me to sign in",
                          textColor: Colorz.simpleText,
                          onPressed: () {
                            Navigator.pushNamed(context, '/bottom-navigation-bar-screen');
                          },
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        )
      ),
    );
  }
}