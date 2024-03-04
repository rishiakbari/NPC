import 'package:flutter/material.dart';
import 'package:npc/screens/notification_screen.dart';
import 'package:npc/screens/setting_screen.dart';
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
      appBar: AppBar(
        backgroundColor: Colorz.main,
        title: Text(
          "Messanger",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colorz.simpleText, fontWeight: FontWeight.w600),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(SettingScreen.routeName);
          },
          child: const Icon(
            TablerIcons.align_left,
            size: 30.0,
            color: Colorz.appBar,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(NotificationScreen.routeName);
              },
              icon: const Icon(
                size: 30.0,
                Icons.notifications_active_rounded,
                color: Colorz.appBar,
              ))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        backgroundColor: Colorz.main,
        color: Colorz.appBar,
        child: Container(
          color: Colorz.main,
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
              color: Colorz.screenBackground,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
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
                      itemCount: 21,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
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
                                    borderRadius: BorderRadius.circular(100)),
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
                              onTap: () {},
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
