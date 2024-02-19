import 'package:flutter/material.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({super.key});

  static const routeName = '/select-location-screen';

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {
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
                      hintText: "Select your City",
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                        color: Colorz.textSecondary,
                        size: 35,
                      ),
                    ),
                    CustomTextFormField(
                      hintText: "Select your Area",
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                        color: Colorz.textSecondary,
                        size: 35,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    RoundedButtonWidget(
                      text: "Continue",
                      textColor: Colorz.simpleText,
                      onPressed: () {
                        
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