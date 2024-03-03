import 'package:flutter/material.dart';
import 'package:npc/screens/setting_screen.dart';
import 'package:npc/utils/colorz.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';

class TrackingOrderScreen extends StatefulWidget {
  const TrackingOrderScreen({super.key});

  static const routeName = '/tracking-order-screen';

  @override
  State<TrackingOrderScreen> createState() => _TrackingOrderScreenState();
}

class _TrackingOrderScreenState extends State<TrackingOrderScreen> {
  final TextEditingController orderNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Track Order",
      ),
      body: CustomSingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: height * 0.24,
                width: width,
                decoration: BoxDecoration(
                  color: Colorz.main,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  // alignment: Alignment.centerRight,
                  children: [
                    // Positioned(
                    //     top: 0,
                    //     right: 0,
                    //     child:
                    //         SvgPicture.asset("assets/images/ellipse_20.svg")),
                    // Positioned(
                    // top: 0,
                    // right: 0,
                    // child:
                    // SvgPicture.asset("assets/images/ellipse_52.svg")),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Input your\nPackage order ID\nfor Track your Parcel",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Colorz.simpleText,
                                ),
                          )
                        ],
                      ),
                    ),
                  ],
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
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Track Your Order",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colorz.textSelection,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      CustomTextFormField(
                        hintText: "No. Order",
                        controller: orderNumber,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      RoundedButtonWidget(
                        text: "Track Now",
                        textColor: Colorz.simpleText,
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(SettingScreen.routeName);
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
