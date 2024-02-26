import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:npc/screens/sign_up_user_screen.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  static const routeName = '/change-password-screen';

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {

  final TextEditingController oldPassword = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
   var isOldPassword = true.obs;
   var isPassword = true.obs;
   var isConfirmPassword = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Change Password",
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
                  padding: const EdgeInsets.fromLTRB(15,25,15,25),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: oldPassword,
                        hintText: "Old Password",
                        obscureText: isOldPassword.value,
                        suffixIcon: Obx(() => GestureDetector(
                          onTap: () {
                            setState(() {
                              isOldPassword.value = !isOldPassword.value;
                            });
                          },
                          child: Icon(
                            isOldPassword.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                            color: Colorz.textSecondary,
                          ),
                        )),
                      ),
                      CustomTextFormField(
                        controller: password,
                        hintText: "Password",
                        obscureText: isPassword.value,
                        suffixIcon: Obx(() => GestureDetector(
                          onTap: () {
                            setState(() {
                              isPassword.value = !isPassword.value;
                            });
                          },
                          child: Icon(
                            isPassword.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                            color: Colorz.textSecondary,
                            ),
                          )),
                      ),
                      CustomTextFormField(
                        controller: confirmPassword,
                        hintText: "Confirm Password",
                        obscureText: isConfirmPassword.value,
                        suffixIcon: Obx(() => GestureDetector(
                          onTap: () {
                            setState(() {
                              isConfirmPassword.value = !isConfirmPassword.value;
                            });
                          },
                          child: Icon(
                            isConfirmPassword.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                            color: Colorz.textSecondary,
                          ),
                        )),
                      ),
                      const SizedBox(height: 10.0,),
                      RoundedButtonWidget(
                        text: "Save Now !",
                        textColor: Colorz.simpleText,
                        onPressed: () {
                          if(oldPassword.text.isEmpty || password.text.isEmpty || confirmPassword.text.isEmpty){
                            Fluttertoast.showToast(
                              msg: "Please enter your password",
                            );
                          }
                          else{
                            Navigator.pushNamed(context, SignUpUserScreen.routeName);
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}