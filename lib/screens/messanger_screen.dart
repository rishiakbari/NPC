import 'package:flutter/material.dart';
import 'package:npc/screens/audio_call_screen.dart';
import 'package:npc/screens/notification_screen.dart';
import 'package:npc/widgets/custom_text_form_field.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../utils/colorz.dart';

class MessangerScreen extends StatefulWidget {
  const MessangerScreen({super.key});

  static const routeName = '/messanger-screen';

  @override
  State<MessangerScreen> createState() => _MessangerScreenState();
}

class _MessangerScreenState extends State<MessangerScreen> {
  Future<void> refresh() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      body: RefreshIndicator(
        onRefresh: refresh,
        backgroundColor: Colorz.main,
        color: Colorz.appBar,
        child: SingleChildScrollView(
          child: Container(
            color: Colorz.main,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  height: height * 0.15,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 50.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                TablerIcons.menu_2,
                                color: Colorz.simpleText,
                                size: 35,
                              ),
                            ),
                            Text(
                              "Messanger",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Colorz.simpleText,
                                      fontWeight: FontWeight.w600),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(NotificationScreen.routeName);
                              },
                              child: const Icon(
                                Icons.notifications_active_rounded,
                                color: Colorz.simpleText,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // *********** messanger **********
                Container(
                  decoration: const BoxDecoration(
                    color: Colorz.screenBackground,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  height: height,
                  // width: width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          onTap: () {},
                          hintText: "Search Inbox",
                          fillColor: Colorz.appBar,
                          prefixIcon: const Icon(TablerIcons.search),
                        ),
                        Expanded(
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 21,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colorz.appBar,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListTile(
                                  leading: Container(
                                    height: height * 0.07,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                        color: Colorz.textSecondary,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: const Icon(Icons.person),
                                  ),
                                  title: Text("Jhon Smith",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color: Colorz.textSelection,
                                              fontWeight: FontWeight.w600)),
                                  subtitle: Text(
                                    "Hey, How are you Buddy?",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colorz.textSecondary),
                                  ),
                                  trailing: Text(
                                    "12:00Pm",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colorz.textSelection),
                                  ),
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(AudioCallScreen.routeName);
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
