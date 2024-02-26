import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:npc/screens/bottom_navigation_screen.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:pinput/pinput.dart';
import '../utils/colorz.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  static const routeName = '/otp-screen';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  // late SharedPreferences _sharedPreferences;
  // late List<TextEditingController?> _otpControllers;
  // late String _otp = '';
  // late bool _isResendVisible = false;
  // late Timer _resendTimer;
  // late int? _resendToken;
  // late String _verificationId = '';
  // late String _countryCode = '';
  // late String _phoneNumber = '';
  // late String? _name;
  // late String? _email;
  // late String? _city;
  // late String? _category;
  // late String? _distributorCode;
  // late File? _avatar;
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 60,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Colorz.textSelection,
    ),
    decoration: BoxDecoration(
      color: Colorz.otpField,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.transparent)
    )
  );
  final TextEditingController pinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Phone Verification",
      ),
      body: CustomSingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colorz.appBar,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15,25,15,30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "OTP Verification",
                        style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colorz.textSelection,fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 8.0,),
                      Text(
                        "An authentication code has been sent to\n(+880) 111 222 333",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary)
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: double.infinity,
                        child: Pinput(
                          controller: pinput,
                          length: 4,
                          defaultPinTheme: defaultPinTheme,
                          focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              border: Border.all(color: Colorz.otpField)
                            ),
                          ),
                          onCompleted: (pin) => debugPrint(pin),
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "I didn't receive code.",
                              style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colorz.textSelection)
                            ),
                            TextSpan(
                              text: " Resend Code",
                              style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colorz.main,fontWeight: FontWeight.w600)
                            )
                          ],
                        )
                      ),
                      const SizedBox(height: 8.0,),
                      Text(
                        "1:20 Sec left",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSelection,fontWeight: FontWeight.w600)
                      ),
                      const SizedBox(height: 15.0,),
                      RoundedButtonWidget(
                        text: "Verify Now",
                        textColor: Colorz.simpleText,
                        onPressed: () {
                          if(pinput.text.isEmpty){
                            setState(() {
                              Fluttertoast.showToast(
                                msg: "Please enter your PIN",
                              );
                            });
                          }
                          else{
                            Navigator.pushReplacementNamed(context, BottomNavigationBarScreen.routeName);
                          }
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