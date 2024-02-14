import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/colorz.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = "/splash-screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/welcome-screen');
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colorz.splashPage,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Image.asset("assets/images/npc3-logo.png"),
            ),
          ),
        ],
      ),
    );
  }
}