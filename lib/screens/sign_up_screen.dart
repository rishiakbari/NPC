import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:npc/screens/login_with_phone_number_screen.dart';
import 'package:npc/screens/select_location_screen.dart';
import 'package:npc/screens/sign_in_screen.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_country_code_picker.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/colorz.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const routeName = "/sign-up-screen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
    late SharedPreferences _sharedPreferences;
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  late String _countryCode;
  bool isChecked = false;

   Future<void> _init() async {
    _countryCode = '+91';
    _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.clear();
  }
  @override
  void initState() {
    super.initState();
    _init();
  }
  @override
  void dispose(){
    phone.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      appBar: const CustomAppBar(
        title: "Sign up",
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
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign up with",
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colorz.textSelection,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "email and phone number",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                            color: Colorz.textSecondary,
                            fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      controller: email,
                      hintText: "johndoe@mail.com",
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Colorz.textSelection,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                margin:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: const Divider(
                                  thickness: 0.5,
                                  color: Colorz.textSecondary,
                                ))),
                        const Text(
                          "OR",
                          style: TextStyle(color: Colorz.textSelection),
                        ),
                        Expanded(
                            child: Container(
                                margin:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: const Divider(
                                  thickness: 0.5,
                                  color: Colorz.textSecondary,
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    CustomTextFormField(
                      controller: phone,
                      hintText: "Phone Number",
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    RoundedButtonWidget(
                      text: "Sign Up",
                      textColor: Colorz.simpleText,
                      onPressed: () {
                        if(email.text.isEmpty && phone.text.isEmpty){
                          setState(() {
                            Fluttertoast.showToast(
                              msg: "Please enter your required fields",
                            );
                          });
                        }
                        else{
                          if(phone.text.isNotEmpty){
                            Navigator.pushNamed(context, LoginWithPhoneNumberScreen.routeName);
                          }
                          else{
                            Navigator.pushNamed(context, SelectLocationScreen.routeName);
                          }
                          
                          _sharedPreferences.setString('authToken', 'true');
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have not an account ?",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colorz.textSelection,
                      ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, '/sign-in-screen');
                  },
                  child: Text(
                    "Sign In",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colorz.main, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
