import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:npc/screens/bottom_navigation_screen.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/colorz.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({super.key});

  static const routeName = '/select-location-screen';

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {
  final TextEditingController city =  TextEditingController();
  final TextEditingController area =  TextEditingController();
  late SharedPreferences _sharedPreferences;

  Future<void> _init()async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }
  @override
  void initState() {
    _init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Select location",
      ),
      body: CustomSingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colorz.appBar,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,30,30,25),
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: city,
                      hintText: "Select your City",
                      suffixIcon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colorz.textSecondary,
                        size: 35,
                      ),
                    ),
                    CustomTextFormField(
                      controller: area,
                      hintText: "Select your Area",
                      suffixIcon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colorz.textSecondary,
                        size: 35,
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    RoundedButtonWidget(
                      text: "Continue",
                      textColor: Colorz.simpleText,
                      onPressed: () {
                        if(city.text.isNotEmpty && area.text.isNotEmpty){
                          Navigator.pushNamed(context, BottomNavigationBarScreen.routeName);
                        }
                        else{
                          setState(() {
                            Fluttertoast.showToast(
                              msg: "Please enter your field",
                            );
                          });
                          _sharedPreferences.setString('authToken', 'true');
                        }
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}