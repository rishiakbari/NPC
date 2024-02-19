import 'package:flutter/material.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';

class ForgetPasswordEmailSentScreen extends StatefulWidget {
  const ForgetPasswordEmailSentScreen({super.key});

  static const routeName = '/forget-password-email-sent-screen';

  @override
  State<ForgetPasswordEmailSentScreen> createState() => _ForgetPasswordEmailSentScreenState();
}

class _ForgetPasswordEmailSentScreenState extends State<ForgetPasswordEmailSentScreen> {

  final TextEditingController emailController = TextEditingController();
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
                  borderRadius: BorderRadius.circular(10)
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
                      CustomTextFormField(
                        controller: emailController,
                        hintText: "Email Address",
                        onTap: () {},
                      ),
                      const SizedBox(height: 10.0,),
                      Text(
                        "Email sent to ex*****@gmail.com",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSelection),
                      ),
                      const SizedBox(height: 10.0,),
                      RoundedButtonWidget(
                        text: "Send",
                        textColor: Colorz.simpleText,
                        onPressed: () {
                          Navigator.pushNamed(context,  '/forget-password-email-code-screen');
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