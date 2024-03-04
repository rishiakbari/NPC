import 'package:flutter/material.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../utils/colorz.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_circle_icon_button.dart';
import '../widgets/custom_single_child_scroll_view.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  static const routeName = "/faq-screen";

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      appBar: const CustomAppBar(
        title: "FAQ",
      ),
      body: CustomSingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colorz.appBar,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How to send my package?",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colorz.textSelection,
                                  fontWeight: FontWeight.w600),
                        ),
                        CustomCircleIconButton(
                          onPressed: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          scale: 0.5,
                          icon: isShow
                              ? TablerIcons.chevron_up
                              : TablerIcons.chevron_down,
                          iconSize: 30,
                          iconColor: Colorz.appBar,
                        ),
                      ],
                    ),
                  ),
                  isShow
                      ? const Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 20.0),
                          child: Column(
                            children: [
                              Divider(),
                              Text(
                                  "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to"),
                            ],
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colorz.appBar,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Can i change pick up location?",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colorz.textSelection,
                          fontWeight: FontWeight.w600),
                    ),
                    CustomCircleIconButton(
                      onPressed: () {},
                      scale: 0.5,
                      iconColor: Colorz.appBar,
                      iconSize: 30.0,
                      icon: TablerIcons.chevron_right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colorz.appBar,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How to Edit Profile ?",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colorz.textSelection,
                          fontWeight: FontWeight.w600),
                    ),
                    CustomCircleIconButton(
                      onPressed: () {},
                      scale: 0.5,
                      iconColor: Colorz.appBar,
                      iconSize: 30.0,
                      icon: TablerIcons.chevron_right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colorz.appBar,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "What does Lorem Ipsum mean?",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colorz.textSelection,
                          fontWeight: FontWeight.w600),
                    ),
                    CustomCircleIconButton(
                      onPressed: () {},
                      scale: 0.5,
                      iconColor: Colorz.appBar,
                      iconSize: 30.0,
                      icon: TablerIcons.chevron_right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colorz.appBar,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "What is dummy text?",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colorz.textSelection,
                          fontWeight: FontWeight.w600),
                    ),
                    CustomCircleIconButton(
                      onPressed: () {},
                      scale: 0.5,
                      iconColor: Colorz.appBar,
                      iconSize: 30.0,
                      icon: TablerIcons.chevron_right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colorz.appBar,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Who invented Lorem Ipsum?",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colorz.textSelection,
                          fontWeight: FontWeight.w600),
                    ),
                    CustomCircleIconButton(
                      onPressed: () {},
                      scale: 0.5,
                      iconColor: Colorz.appBar,
                      iconSize: 30.0,
                      icon: TablerIcons.chevron_right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colorz.appBar,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Why do we use Lorem Ipsum?",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colorz.textSelection,
                          fontWeight: FontWeight.w600),
                    ),
                    CustomCircleIconButton(
                      onPressed: () {},
                      scale: 0.5,
                      iconColor: Colorz.appBar,
                      iconSize: 30.0,
                      icon: TablerIcons.chevron_right,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
