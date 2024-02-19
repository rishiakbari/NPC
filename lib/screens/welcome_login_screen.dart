import 'package:flutter/material.dart';
import 'package:npc/widgets/custom_rounded_button.dart';

import '../utils/colorz.dart';

class WelcomeLoginScreen extends StatefulWidget {
  const WelcomeLoginScreen({super.key});

  static const routeName = "/welcome-login-screen";

  @override
  State<WelcomeLoginScreen> createState() => _WelcomeLoginScreenState();
}

class _WelcomeLoginScreenState extends State<WelcomeLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              "assets/images/welcom2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colorz.main,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedButtonWidget(
                    text: 'Continue with Email',
                    textColor: Colorz.simpleText, 
                    isGradient: true,
                    onPressed: () {
                      Navigator.pushNamed(context, '/welcome-v2-login-screen');
                    },
                  ),
                  const SizedBox(height: 30.0,),
                  RoundedButtonWidget(
                    text: "Continue with Phone Number",
                    textColor: Colorz.simpleText,
                    backgroundColor: Colorz.transparentBackground,
                    // isGradient: true,
                    onPressed: () {
                      
                    },
                  ),
                  const SizedBox(height: 30.0,),
                  RichText(
                    overflow: TextOverflow.clip,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account ? ",
                      style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(
                        color: Colorz.simpleText,),
                        ),
                        TextSpan(
                          text: "Register",
                          style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(
                        color: Colorz.simpleText,),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}