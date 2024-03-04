import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:npc/screens/booking_screen.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import '../utils/colorz.dart';

class HomeCleanScreen extends StatefulWidget {
  const HomeCleanScreen({super.key});

  static const routeName = '/home-clean-screen';

  @override
  State<HomeCleanScreen> createState() => _HomeCleanScreenState();
}

class _HomeCleanScreenState extends State<HomeCleanScreen> {
  final List images = [
    "assets/icons/cloths.svg",
    "assets/icons/bathroom.svg",
    "assets/icons/balcony.svg",
    "assets/icons/hall.svg",
    "assets/icons/kitchen.svg",
  ];

  final List color = [
    Colorz.circleBackground,
    Colorz.main,
    Colorz.iron,
    Colorz.dry,
    Colorz.splashPage,
  ];

  final List titles = [
    "Bed Room",
    "BathRoom",
    "Balcony",
    "Hall",
    "Kitchen",
  ];

  final List subtital = [
    "Dry Clean, Laundry",
    "Dry Clean, Laundry",
    "Was & Fold, Dry Clean, Laundry",
    "Was & Fold, Dry Clean, Laundry",
    "Was & Fold, Dry Clean, Laundry",
  ];

  int _itemcount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Home Clean",
      ),
      // appBar: AppBar(
      //     leading: IconButton(
      //       icon: const Icon(Icons.chevron_left),
      //       iconSize: 30.0,
      //       highlightColor: Colors.transparent,
      //       onPressed: () => Navigator.of(context).pop(),
      //     ),
      //     title: const Text(
      //       "Home Clean",
      //     )),
      backgroundColor: Colorz.screenBackground,
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colorz.screenBackground,
            child: Column(
              children: [
                TabBar(
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
                Flexible(
                  child: TabBarView(
                    children: [
                      flatItem(context),
                      shopItem(context),
                      villaItem(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget flatItem(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Future<void> refresh() async {
      await Future.delayed(const Duration(seconds: 2));
    }

    return RefreshIndicator(
      onRefresh: refresh,
      color: Colorz.appBar,
      backgroundColor: Colorz.main,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              // shrinkWrap: true,
              itemCount: images.length + 1,
              itemBuilder: (context, index) {
                if (images.length == index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 20.0, top: 30.0, bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colorz.appBar,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0,
                                bottom: 15.0,
                                left: 20.0,
                                right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Subtotal ($_itemcount item) :",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          color: Colorz.textSelection,
                                          fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "\$50",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          color: Colorz.splashPage,
                                          fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      RoundedButtonWidget(
                        minWidth: width * 0.9,
                        text: "Continue",
                        textColor: Colorz.simpleText,
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(BookingScreen.routeName);
                        },
                      ),
                    ],
                  );
                }
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 20.0),
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
                                  bottom: 10.0,
                                  right: 20.0),
                              child: Container(
                                height: height * 0.08,
                                width: width * 0.18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: color[index],
                                ),
                                child: SvgPicture.asset(
                                  images[index],
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  titles[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          color: Colorz.textSelection,
                                          fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  subtital[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: Colorz.textSecondary),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colorz.main.withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: InkWell(
                                        onTap: () {
                                          if (_itemcount <= 0) return;
                                          _itemcount--;
                                          setState(() {});
                                        },
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colorz.main,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      _itemcount.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Colorz.main,
                                          ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colorz.main.withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: InkWell(
                                        onTap: () {
                                          _itemcount++;
                                          setState(() {});
                                        },
                                        child: const Icon(
                                          Icons.add,
                                          color: Colorz.main,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
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
                        if (index != images.length - 1)
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
        ],
      ),
    );
  }

  Widget shopItem(BuildContext context) {
    return Container();
  }

  Widget villaItem(BuildContext context) {
    return Container();
  }
}
