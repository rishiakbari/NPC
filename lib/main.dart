import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:npc/screens/sign_in_screen.dart';
import 'package:npc/screens/splash_screen.dart';
import 'package:npc/screens/welcome_login_screen.dart';
import 'package:npc/screens/welcome_screen.dart';
import 'package:npc/screens/welcome_v2_login_screen.dart';

import 'utils/app_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
   const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Parck Cleaning',
      debugShowCheckedModeBanner: false,
      theme:buildThemeData(context),
      home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        SplashScreen.routeName :(context) =>  const SplashScreen(),
        WelcomeScreen.routeName :(context) =>  const WelcomeScreen(),
        WelcomeLoginScreen.routeName :(context) =>  const WelcomeLoginScreen(),
        WelcomeV2LoginScreen.routeName :(context) =>  const WelcomeV2LoginScreen(),
        SignInScreen.routeName :(context) =>  const SignInScreen(),
      }, 
    );
  }
}


