import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:npc/screens/audio_call_screen.dart';
import 'package:npc/screens/booking_screen.dart';
import 'package:npc/screens/bottom_navigation_screen.dart';
import 'package:npc/screens/check_out_screen.dart';
import 'package:npc/screens/coupon_screen.dart';
import 'package:npc/screens/delivery_review_screen.dart';
import 'package:npc/screens/faq_screen.dart';
import 'package:npc/screens/forget_password_email_sent.dart';
import 'package:npc/screens/home_clean_screen.dart';
import 'package:npc/screens/how_it_work_screen.dart';
import 'package:npc/screens/login_with_phone_number_screen.dart';
import 'package:npc/screens/messanger_screen.dart';
import 'package:npc/screens/my_activity_screen.dart';
import 'package:npc/screens/notification_screen.dart';
import 'package:npc/screens/order_review_screen.dart';
import 'package:npc/screens/order_status_screen.dart';
import 'package:npc/screens/order_success_screen.dart';
import 'package:npc/screens/otp_screen.dart';
import 'package:npc/screens/profile_details.dart';
import 'package:npc/screens/promo_detail_screen.dart';
import 'package:npc/screens/setting_screen.dart';
import 'package:npc/screens/sign_in_screen.dart';
import 'package:npc/screens/sign_up_screen.dart';
import 'package:npc/screens/splash_screen.dart';
import 'package:npc/screens/success_screen.dart';
import 'package:npc/screens/tracking_order_screen.dart';
import 'package:npc/screens/welcome_login_screen.dart';
import 'package:npc/screens/welcome_screen.dart';
import 'package:npc/screens/welcome_v2_login_screen.dart';
import 'screens/change_password_screen.dart';
import 'screens/cleaner_screen.dart';
import 'screens/forget_password_email_code.dart';
import 'screens/select_location_screen.dart';
import 'screens/sign_up_user_screen.dart';
import 'utils/app_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
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
      theme: buildThemeData(context),
      home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
        WelcomeLoginScreen.routeName: (context) => const WelcomeLoginScreen(),
        WelcomeV2LoginScreen.routeName: (context) =>
            const WelcomeV2LoginScreen(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        LoginWithPhoneNumberScreen.routeName: (context) =>
            const LoginWithPhoneNumberScreen(),
        SelectLocationScreen.routeName: (context) =>
            const SelectLocationScreen(),
        OtpScreen.routeName: (context) => const OtpScreen(),
        ForgetPasswordEmailSentScreen.routeName: (context) =>
            const ForgetPasswordEmailSentScreen(),
        ForgetPasswordEmailCodeScreen.routeName: (context) =>
            const ForgetPasswordEmailCodeScreen(),
        ChangePasswordScreen.routeName: (context) =>
            const ChangePasswordScreen(),
        SignUpUserScreen.routeName: (context) => const SignUpUserScreen(),
        SuccessScreen.routeName: (context) => const SuccessScreen(),
        BottomNavigationBarScreen.routeName: (context) =>
            const BottomNavigationBarScreen(),
        HomeCleanScreen.routeName: (context) => const HomeCleanScreen(),
        BookingScreen.routeName: (context) => const BookingScreen(),
        OrderReviewScreen.routeName: (context) => const OrderReviewScreen(),
        CleanerScreen.routeName: (context) => const CleanerScreen(),
        CheckOutScreen.routeName: (context) => const CheckOutScreen(),
        MyActivityScreen.routeName: (context) => const MyActivityScreen(),
        OrderStatusScreen.routeName: (context) => const OrderStatusScreen(),
        PromoDetailScreen.routeName: (context) => const PromoDetailScreen(),
        TrackingOrderScreen.routeName: (context) => const TrackingOrderScreen(),
        SettingScreen.routeName: (context) => const SettingScreen(),
        MessangerScreen.routeName: (context) => const MessangerScreen(),
        AudioCallScreen.routeName: (context) => const AudioCallScreen(),
        NotificationScreen.routeName: (context) => const NotificationScreen(),
        ProfileDetailScreen.routeName: (context) => const ProfileDetailScreen(),
        CouponScreen.routeName: (context) => const CouponScreen(),
        DeliveryReviewScreen.routeName: (context) =>
            const DeliveryReviewScreen(),
        OrderSuccessScreen.routeName: (context) => const OrderSuccessScreen(),
        HowItWorkScreen.routeName: (context) => const HowItWorkScreen(),
        FAQScreen.routeName: (context) => const FAQScreen(),
      },
    );
  }
}
