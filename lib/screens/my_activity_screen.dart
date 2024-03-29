import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:npc/screens/order_status_screen.dart';
import 'package:npc/screens/setting_screen.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:tabler_icons/tabler_icons.dart';
import '../utils/colorz.dart';

class MyActivityScreen extends StatefulWidget {
  const MyActivityScreen({super.key});

  static const routeName = '/my-activity-screen';

  @override
  State<MyActivityScreen> createState() => _MyActivityScreenState();
}

class _MyActivityScreenState extends State<MyActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "My Activity",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colorz.textSelection, fontWeight: FontWeight.w600),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(SettingScreen.routeName);
            },
            child: const Icon(
              TablerIcons.align_left,
              size: 30.0,
              color: Colorz.textSelection,
            ),
          )),
      // appBar: const CustomAppBar(
      //   title: "My Activity",
      // ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
              labelStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colorz.main, fontWeight: FontWeight.w600),
              unselectedLabelStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(
                      color: Colorz.textSelection, fontWeight: FontWeight.w600),
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2.0, color: Colorz.main),
                  insets: EdgeInsets.symmetric(horizontal: -20.0)),
              tabs: const [
                Tab(
                  child: Text(
                    "Active",
                  ),
                ),
                Tab(
                  child: FittedBox(
                    child: Text(
                      "Canceled",
                    ),
                  ),
                ),
                Tab(
                  child: FittedBox(child: Text("Completed")),
                ),
                Tab(
                  child: Text("Empty"),
                ),
              ],
            ),
            Flexible(
              child: TabBarView(
                children: [
                  activeView(context),
                  cancelledView(context),
                  completedView(context),
                  emptyView(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget activeView(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Future<void> refresh() async {
      await Future.delayed(const Duration(seconds: 2));
    }

    return RefreshIndicator(
      onRefresh: refresh,
      backgroundColor: Colorz.main,
      color: Colorz.appBar,
      child: CustomSingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ListTile(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                  tileColor: Colorz.main,
                  title: Text(
                    "ID:205482",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colorz.simpleText, fontWeight: FontWeight.w600),
                  ),
                  trailing: RoundedButtonWidget(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    text: "Active",
                    textColor: Colorz.simpleText,
                    minWidth: width * 0.25,
                    gradient: const LinearGradient(
                        colors: [Color(0xFF89D859), Color(0xFF06C06C)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  )),
              Container(
                decoration: const BoxDecoration(
                    color: Colorz.appBar,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Bed Room",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Bath Room",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Hall",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Kitchen",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "10 Jun, 2021, 8:00 am",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "Amount: £120.00",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.redText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              ListTile(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                  tileColor: Colorz.main,
                  title: Text(
                    "ID:205482",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colorz.simpleText, fontWeight: FontWeight.w600),
                  ),
                  trailing: RoundedButtonWidget(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    text: "Active",
                    textColor: Colorz.simpleText,
                    minWidth: width * 0.25,
                    gradient: const LinearGradient(
                        colors: [Color(0xFF89D859), Color(0xFF06C06C)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  )),
              Container(
                decoration: const BoxDecoration(
                    color: Colorz.appBar,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hall",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Office",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Cabin",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Bathroom",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "10 Jun, 2021, 8:00 am",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "Amount: £120.00",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.redText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cancelledView(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Future<void> refresh() async {
      await Future.delayed(const Duration(seconds: 2));
    }

    return RefreshIndicator(
      onRefresh: refresh,
      backgroundColor: Colorz.main,
      color: Colorz.appBar,
      child: CustomSingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ListTile(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                  tileColor: Colorz.main,
                  title: Text(
                    "ID:205482",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colorz.simpleText, fontWeight: FontWeight.w600),
                  ),
                  trailing: RoundedButtonWidget(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    text: "canceled",
                    textColor: Colorz.simpleText,
                    minWidth: width * 0.25,
                    gradient: const LinearGradient(
                        colors: [Color(0xFFFE6587), Color(0xFFF52D6A)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  )),
              Container(
                decoration: const BoxDecoration(
                    color: Colorz.appBar,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Bed Room",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Bath Room",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Hall",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Kitchen",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "10 Jun, 2021, 8:00 am",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "Amount: £120.00",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.redText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              ListTile(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                  tileColor: Colorz.main,
                  title: Text(
                    "ID:205482",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colorz.simpleText, fontWeight: FontWeight.w600),
                  ),
                  trailing: RoundedButtonWidget(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    text: "Canceled",
                    textColor: Colorz.simpleText,
                    minWidth: width * 0.25,
                    gradient: const LinearGradient(
                        colors: [Color(0xFFFE6587), Color(0xFFF52D6A)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  )),
              Container(
                decoration: const BoxDecoration(
                    color: Colorz.appBar,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hall",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Office",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Cabin",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Bathroom",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "10 Jun, 2021, 8:00 am",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "Amount: £120.00",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.redText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget completedView(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Future<void> refresh() async {
      await Future.delayed(const Duration(seconds: 2));
    }

    return RefreshIndicator(
      onRefresh: refresh,
      backgroundColor: Colorz.main,
      color: Colorz.appBar,
      child: CustomSingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ListTile(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                  tileColor: Colorz.main,
                  title: Text(
                    "ID:205482",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colorz.simpleText, fontWeight: FontWeight.w600),
                  ),
                  trailing: RoundedButtonWidget(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    text: "Completed",
                    textColor: Colorz.simpleText,
                    minWidth: width * 0.28,
                    isGradient: true,
                    // gradient: const LinearGradient(
                    //     colors: [Color(0xFFFE6587), Color(0xFFF52D6A)],
                    //     begin: Alignment.topCenter,
                    //     end: Alignment.bottomCenter),
                  )),
              Container(
                decoration: const BoxDecoration(
                    color: Colorz.appBar,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Bed Room",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Bath Room",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Hall",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Kitchen",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "10 Jun, 2021, 8:00 am",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "Amount: £120.00",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.redText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              ListTile(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                  tileColor: Colorz.main,
                  title: Text(
                    "ID:205482",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colorz.simpleText, fontWeight: FontWeight.w600),
                  ),
                  trailing: RoundedButtonWidget(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    text: "Completed",
                    textColor: Colorz.simpleText,
                    minWidth: width * 0.28,
                    isGradient: true,
                    // gradient: const LinearGradient(
                    //     colors: [Color(0xFFFE6587), Color(0xFFF52D6A)],
                    //     begin: Alignment.topCenter,
                    //     end: Alignment.bottomCenter),
                  )),
              Container(
                decoration: const BoxDecoration(
                    color: Colorz.appBar,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hall",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Office",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Cabin",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "Bathroom",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            "10 Jun, 2021, 8:00 am",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "Amount: £120.00",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.redText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emptyView(BuildContext context) {
    return CustomSingleChildScrollView(
        child: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: SvgPicture.asset("assets/icons/empty.svg"),
          ),
          Text(
            "No Activity",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colorz.textSelection, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Create some order for you ?",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colorz.textSecondary, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20.0,
          ),
          RoundedButtonWidget(
            text: "Send a Cloth",
            minWidth: MediaQuery.of(context).size.width * 0.70,
            textColor: Colorz.simpleText,
            onPressed: () {
              Navigator.of(context).pushNamed(OrderStatusScreen.routeName);
            },
          )
        ],
      ),
    ));
  }
}
