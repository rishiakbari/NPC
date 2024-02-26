import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:npc/screens/success_screen.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';

class SignUpUserScreen extends StatefulWidget {
  const SignUpUserScreen({super.key});

  static const routeName = '/sign-up-user-screen';

  @override
  State<SignUpUserScreen> createState() => _SignUpUserScreenState();
}

class _SignUpUserScreenState extends State<SignUpUserScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
    bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Sign Up",
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colorz.circleavtarBackground,
                        radius: 50,
                        child: Icon(
                          Icons.camera_alt_rounded,
                          size: 40,
                          color: Colorz.cameraBackground,
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      CustomTextFormField(
                        controller: fullNameController,
                        hintText: "Full Name",
                      ),
                      CustomTextFormField(
                        controller: phoneNumberController,
                        hintText: "Phone Number",
                        keyboardType: TextInputType.phone,
                      ),
                      CustomTextFormField(
                        controller: emailController,
                        hintText: "Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      CustomTextFormField(
                        controller: passwordController,
                        hintText: "Password",
                      ),
                      CustomTextFormField(
                        controller: confirmPasswordController,
                        hintText: "Confirm Password",
                      ),
                      const SizedBox(height: 5.0,),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colorz.main,
                            checkColor: Colorz.appBar,
                            value: _checkbox, 
                            onChanged: (value) {
                              setState(() {
                                _checkbox = !_checkbox;
                              });
                            },
                          ),
                          Text(
                            "By creating an account you agree to\nour Terms of Service and Privacy Policy",
                            style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0,),
                      RoundedButtonWidget(
                        text: "Sign up",
                        textColor: Colorz.simpleText,
                        onPressed: () {
                          if(
                            fullNameController.text.isEmpty ||
                            phoneNumberController.text.isEmpty ||
                            emailController.text.isEmpty ||
                            passwordController.text.isEmpty ||
                            confirmPasswordController.text.isEmpty
                            ){
                              Fluttertoast.showToast(
                                msg: "Please enter your required fields",
                              );
                          }
                          else if (!_checkbox){
                            Fluttertoast.showToast(
                              msg: "Please check the Privacy Policy",
                            );
                          }
                          else{
                            Navigator.pushNamed(context, SuccessScreen.routeName);
                          }
                        },
                      ),
                      const SizedBox(height: 30.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have not an account ?",
                            style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(
                              color: Colorz.textSelection,
                            ),
                          ),
                          const SizedBox(width: 5.0,),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Sign up !",
                              style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                color: Colorz.main,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                        ],
                      ),
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