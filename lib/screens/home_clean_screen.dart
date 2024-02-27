import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:npc/widgets/custom_app_bar.dart';

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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Home Clean",
      ),
      backgroundColor: Colorz.screenBackground,
      body: CustomSingleChildScrollView(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Material(
                child: Container(
                  height: 60,
                  color: Colorz.screenBackground,
                  child: TabBar(
                    labelColor: Colorz.simpleText,
                    dividerColor: Colorz.screenBackground,
                    unselectedLabelColor: Colorz.textSecondary,
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.only(
                        right: 10.0, left: 10.0, top: 10.0, bottom: 10.0),
                    // indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colorz.main,
                    ),
                    tabs: [
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Flat",
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            // color: Colorz.appBar,
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Shop",
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            // color: Colorz.appBar,
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Villa",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: height,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colorz.appBar,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0,
                                      top: 20.0,
                                      bottom: 20.0,
                                      right: 20.0),
                                  child: Container(
                                    height: height * 0.09,
                                    width: width * 0.20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      gradient: const LinearGradient(
                                          colors: [
                                            Colorz.roundedButtonone,
                                            Colorz.roundedButtonTwo,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/icons/cloths.svg",
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bed Room",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color: Colorz.textSelection,
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Dry Clean, Laundry",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colorz.textSecondary),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Colorz.main.withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: const Icon(
                                            Icons.remove,
                                            color: Colorz.main,
                                            size: 20.0,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "3",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(color: Colorz.main),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Colorz.main.withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colorz.main,
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0, right: 20.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "\$10",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                                color: Colorz.redText,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colorz.roundedEditButtonTwo
                                                .withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: const Icon(
                                          Icons.edit,
                                          color: Colorz.roundedEditButtonTwo,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              endIndent: 20.0,
                              indent: 20.0,
                              thickness: 1.5,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
