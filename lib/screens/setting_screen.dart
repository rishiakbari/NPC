import 'package:flutter/material.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../utils/colorz.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  static const routeName = '/setting-screen';

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switchValue = true;
  bool switchValue1 = true;
  bool switchValue2 = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      appBar: const CustomAppBar(
        title: "Settings",
      ),
      body: CustomSingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colorz.appBar,
                  borderRadius: BorderRadius.circular(10)),
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
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colorz.textSelection,
                        fontWeight: FontWeight.w600)),
                subtitle: Text(
                  "Basic name",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colorz.textSecondary),
                ),
                trailing: const Icon(TablerIcons.chevron_right),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ListTile(
              tileColor: Colorz.main,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )),
              title: Text(
                "Accounts",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colorz.simpleText, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                decoration: const BoxDecoration(
                    color: Colorz.appBar,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.lock),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              "Change Password",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Colorz.textSelection,
                                      fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Expanded(child: Icon(TablerIcons.chevron_right))
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.notifications_active_rounded),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              "Order Management",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Colorz.textSelection,
                                      fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Expanded(child: Icon(TablerIcons.chevron_right))
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.settings),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              "Document Management",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Colorz.textSelection,
                                      fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Expanded(child: Icon(TablerIcons.chevron_right))
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.credit_card),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              "Payment",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Colorz.textSelection,
                                      fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Expanded(child: Icon(TablerIcons.chevron_right))
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.login_outlined),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              "Sign Out",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Colorz.textSelection,
                                      fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Expanded(child: Icon(TablerIcons.chevron_right))
                        ],
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "More options",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colorz.main, fontWeight: FontWeight.w600),
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
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(TablerIcons.mail_opened),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Newsletter",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                            child: FittedBox(
                          fit: BoxFit.fill,
                          child: Switch(
                            activeColor: Colorz.main,
                            inactiveThumbColor: Colorz.textSecondary,
                            value: switchValue,
                            onChanged: (value) {
                              setState(() {
                                switchValue = value;
                              });
                            },
                          ),
                        ))
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.mail_rounded),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Text Message",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                            child: FittedBox(
                          fit: BoxFit.fill,
                          child: Switch(
                            activeColor: Colorz.main,
                            inactiveThumbColor: Colorz.textSecondary,
                            value: switchValue1,
                            onChanged: (value) {
                              setState(() {
                                switchValue1 = value;
                              });
                            },
                          ),
                        ))
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.phone_in_talk_rounded),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Phone Call",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                            child: FittedBox(
                          fit: BoxFit.fill,
                          child: Switch(
                            activeColor: Colorz.main,
                            inactiveThumbColor: Colorz.textSecondary,
                            value: switchValue2,
                            onChanged: (value) {
                              setState(() {
                                switchValue2 = value;
                              });
                            },
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        const Icon(TablerIcons.moneybag),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Currency",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "\$USD",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: Colorz.textSecondary,
                                  fontWeight: FontWeight.w600),
                        ),
                        const Expanded(child: Icon(TablerIcons.chevron_right))
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.language_sharp),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Language",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "English",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: Colorz.textSecondary,
                                  fontWeight: FontWeight.w600),
                        ),
                        const Expanded(child: Icon(TablerIcons.chevron_right))
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        const Icon(TablerIcons.link),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Linked Accounts",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "Facebook,Go..",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: Colorz.textSecondary,
                                  fontWeight: FontWeight.w600),
                        ),
                        const Expanded(child: Icon(TablerIcons.chevron_right))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
