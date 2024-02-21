import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:tabler_icons/tabler_icons.dart';
import '../utils/colorz.dart';

class PlusScreen extends StatefulWidget {
  const PlusScreen({super.key});

  @override
  State<PlusScreen> createState() => _PlusScreenState();
}

class _PlusScreenState extends State<PlusScreen> {
  final List imgData = [
    "assets/icons/office-clean.svg",
    "assets/icons/home-clean.svg",
    "assets/icons/iron-laundry.svg",
    "assets/icons/dry-clean.svg",
    "assets/icons/shoes-clean.svg",
    "assets/icons/product-clean.svg",
  ];

  final List cleaningName = [
    "Office Clean",
    "HomeCclean",
    "Iron Laundry",
    "Dry Cleaning",
    "Shoes Clean",
    "Products",
  ];

  final List colores = [
    Colorz.circleBackground,
    Colorz.main,
    Colorz.iron,
    Colorz.dry,
    Colorz.splashPage,
    Colorz.main,

  ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      body: CustomSingleChildScrollView(
        child: Container(
          color: Colorz.main,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(),
                height: height * 0.35,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                      top: 40,
                      left: 15,
                      right: 15,  
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              TablerIcons.align_left,
                              color: Colorz.simpleText,
                              size: 35,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              TablerIcons.bell,
                              color: Colorz.simpleText,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50.0,
                        left: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Jhon Smith",
                            style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colorz.simpleText,),
                          ),
                          const SizedBox(height: 8.0,),
                          Text(
                            "Good Morning",
                            style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colorz.simpleText,fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colorz.screenBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  ),
                ),
                // height: height ,
                // width: width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 20.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "What are you looking for today ?",
                            style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colorz.textSelection,fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemCount: imgData.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.appBar,
                              ),
                              height: height * 0.20,
                              width: width*0.32,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 Container(
                                  height: height * 0.1,
                                  width: width * 0.22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: colores[index].withOpacity(0.1),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                    height: height * 0.1,
                                    width: width * 0.11,
                                      child: SvgPicture.asset(imgData[index]),
                                    ),
                                  ),
                                 ),
                                 const SizedBox(height: 8.0,),
                                 Text(
                                  cleaningName[index],
                                  style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colorz.textSelection,fontWeight: FontWeight.w600),
                                 )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 15.0,
                        right: 15.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Promo’s Today",
                            style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colorz.textSelection,fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "View All",
                            style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colorz.textSecondary),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        right: 15.0,
                        left: 15.0
                      ),
                      child: Container(
                        height: height * 0.24,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colorz.main,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30.0,
                                right: 10.0
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Every Friday",
                                    style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colorz.simpleText),
                                  ),
                                  Text(
                                    "50%",
                                    style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(color: Colorz.simpleText,fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Discount",
                                    style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colorz.simpleText),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                right: 20.0,
                                left: 15.0,
                                bottom: 10.0
                              ),
                              child: Container(
                                height: height,
                                width: width * 0.40,
                                decoration: BoxDecoration(
                                  color: Colorz.textSecondary,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}