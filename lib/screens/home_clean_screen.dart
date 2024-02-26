import 'package:flutter/material.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';

import '../utils/colorz.dart';

class HomeCleanScreen extends StatefulWidget {
  const HomeCleanScreen({super.key});

  static const routeName = '/home-clean-screen';

  @override
  State<HomeCleanScreen> createState() => _HomeCleanScreenState();
}

class _HomeCleanScreenState extends State<HomeCleanScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      appBar: const CustomAppBar(
        title: "Home Clean",
      ),
      body: CustomSingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                RoundedButtonWidget(
                  text: "Flat",
                  width: MediaQuery.of(context).size.width * 0.25,
                )
              ],
            )
          ],
        )
      ),
    );
  }
}