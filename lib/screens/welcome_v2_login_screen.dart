import 'package:flutter/material.dart';
import 'package:npc/widgets/custom_rounded_button.dart';

import '../utils/colorz.dart';

class WelcomeV2LoginScreen extends StatefulWidget {
  const WelcomeV2LoginScreen({super.key});

  static const routeName = "/welcome-v2-login-screen";

  @override
  State<WelcomeV2LoginScreen> createState() => _WelcomeV2LoginScreenState();
}

class _WelcomeV2LoginScreenState extends State<WelcomeV2LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              "assets/images/login.jpg",
              fit: BoxFit.cover,  
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colorz.main,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Column(
                  children: [
                    Text(
                      "Welcome to New Park Cleaning",
                      style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colorz.simpleText,fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10.0,),
                    Text(
                      "Deliver your Cloth around the world\nwithout hesitation",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colorz.simpleText),
                    ),
                    const SizedBox(height: 20.0,),
                    RoundedButtonWidget(
                      text: "Login",
                      textColor: Colorz.simpleText,
                      isGradient: true,
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up-screen');
                      },
                    ),
                    const SizedBox(height: 20.0),
                    RoundedButtonWidget(
                      text: "Register",
                      textColor: Colorz.simpleText,
                      isGradient: true,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}