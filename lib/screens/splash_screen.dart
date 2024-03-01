import 'dart:async';

import 'package:flutter/material.dart';
import 'package:npc/screens/home_clean_screen.dart';
import 'package:npc/screens/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/colorz.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = "/splash-screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SharedPreferences _sharedPreferences;

  Future<void> _init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    var token = _sharedPreferences.getString('authToken');
    if (token == null) {
      if (mounted) {
        Navigator.pushReplacementNamed(context, WelcomeScreen.routeName);
      }
    } else {
      if (mounted) {
        // Navigator.pushReplacementNamed(context, BottomNavigationBarScreen.routeName);
        Navigator.pushReplacementNamed(context, HomeCleanScreen.routeName);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      _init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.splashPage,
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
