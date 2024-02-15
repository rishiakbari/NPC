import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';
import '../widgets/custom_app_bar.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const routeName = "/sign-in-screen";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var isObsecure = true.obs;
  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorz.screenBackground,
        appBar: const CustomAppBar(
          title: "Sign In",
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: CustomSingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(
                    16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Welcome Back!",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                color: Colorz.main,
                                fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Sign in to continue",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colorz.textSelection,
                            ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colorz.appBar,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 15, 25),
                          child: Column(
                            children: [
                              CustomTextFormField(
                                controller: emailController,
                                hintText: "Write Email...",
                                prefixIcon: const Icon(
                                  Icons.mail,
                                  color: Colorz.main,
                                ),
                              ),
                              Obx(() => CustomTextFormField(
                                    controller: passwordController,
                                    obscureText: isObsecure.value,
                                    hintText: "Password",
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                      color: Colorz.main,
                                    ),
                                    suffixIcon: Obx(() => GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isObsecure.value =
                                                  !isObsecure.value;
                                            });
                                          },
                                          child: Icon(
                                            isObsecure.value
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                            color: Colorz.main,
                                          ),
                                        )),
                                  )),
                              const SizedBox(
                                height: 10.0,
                              ),
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
                                      }),
                                  Text(
                                    "Remember me",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(color: Colorz.textSelection),
                                  ),
                                  const SizedBox(
                                    width: 25.0,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      "Forget password ?",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(color: Colorz.main),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              RoundedButtonWidget(
                                text: "Sign In",
                                textColor: Colorz.simpleText,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
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
                          const SizedBox(
                            width: 5.0,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/sign-up-screen');
                            },
                            child: Text(
                              "Sign up !",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Colorz.main,
                                      fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
