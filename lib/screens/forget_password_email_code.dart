import 'package:flutter/material.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:pinput/pinput.dart';

import '../utils/colorz.dart';
import '../widgets/custom_rounded_button.dart';

class ForgetPasswordEmailCodeScreen extends StatefulWidget {
  const ForgetPasswordEmailCodeScreen({super.key});

  static const routeName = '/forget-password-email-code-screen';

  @override
  State<ForgetPasswordEmailCodeScreen> createState() => _ForgetPasswordEmailCodeScreenState();
}

class _ForgetPasswordEmailCodeScreenState extends State<ForgetPasswordEmailCodeScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Forget Password",
      ),
      body: CustomSingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colorz.appBar,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(16,30,16,30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "We will send a mail to\nthe email address you registered\nto regain your password",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colorz.textSecondary),
                        ),
                        const SizedBox(height: 10.0,),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: double.infinity,
                          child: Pinput(
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
                                text: "Note Yet Code",
                                style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colorz.textSelection)
                              ),
                              TextSpan(
                                text: " Resend Now!",
                                style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colorz.main,fontWeight: FontWeight.w600)
                              )
                            ],
                          )
                        ),
                        const SizedBox(height: 20.0,),
                        RoundedButtonWidget(
                          text: "Send",
                          textColor: Colorz.simpleText,
                          onPressed: () {
                            Navigator.pushNamed(context, '/change-password-screen');
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