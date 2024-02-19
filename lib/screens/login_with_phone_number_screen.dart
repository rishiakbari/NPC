import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';

import '../utils/colorz.dart';
import '../widgets/custom_country_code_picker.dart';
import '../widgets/custom_text_form_field.dart';

class LoginWithPhoneNumberScreen extends StatefulWidget {
  const LoginWithPhoneNumberScreen({super.key});

  static const routeName = '/login-with-phone-number-screen';

  @override
  State<LoginWithPhoneNumberScreen> createState() => _LoginWithPhoneNumberScreenState();
}

class _LoginWithPhoneNumberScreenState extends State<LoginWithPhoneNumberScreen> {
  
  final TextEditingController phoneController =  TextEditingController();
  late String _countryCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Sign in",
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
                  padding: const EdgeInsets.fromLTRB(15,15,15,25),
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colorz.textSelection,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 5.0,),
                      Text(
                        "with your phone number",
                        style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(
                          color: Colorz.textSecondary,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      CustomTextFormField(
                      controller: phoneController,
                       suffixIcon: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => const RadialGradient(
                          center: Alignment.topCenter,
                          colors: [
                            Colorz.circleBackgroundGradiantOne,
                            Colorz.circleBackgroundGradiantTwo,
                          ]
                        ).createShader(bounds),
                        child: const Icon(Icons.check_circle),
                      ),
                      hintText: "1234567892",
                      prefixIcon: FittedBox(
                        child: CustomCountryCodePicker(
                          initialSelection: 'IN',
                          onChanged: (value) {
                            _countryCode = value.dialCode!;
                          },
                        ),
                      ),
                       inputFormatters: [
                       FilteringTextInputFormatter.digitsOnly,
                  ],
                  keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 30.0,),
                    RoundedButtonWidget(
                      text: "Sign in",
                      textColor: Colorz.simpleText,
                      onPressed: () {
                        Navigator.pushNamed(context, '/otp-screen');
                      },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30.0,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have not any account ?",
                  style: Theme.of(context)
                  .textTheme
                  .titleSmall!.
                  copyWith(
                    color: Colorz.textSelection,
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                InkWell(
                  onTap: () {
                  },
                  child: Text(
                    "Sign In",
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
        )
      ),
    );
  }
}