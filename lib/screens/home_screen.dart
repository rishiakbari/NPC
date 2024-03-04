import 'package:flutter/material.dart';

import '../utils/colorz.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //   final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colorz.screenBackground,

      // body: CustomSingleChildScrollView(
      //   child: Container(
      //     color: Colorz.main,
      //     child: Column(
      //       children: [
      //         Container(
      //           decoration: const BoxDecoration(),
      //           height: height * 0.35,
      //           width: width,
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Padding(
      //                 padding: const EdgeInsets.only(
      //                 top: 40,
      //                 left: 15,
      //                 right: 15,
      //                 ),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     InkWell(
      //                       onTap: () {},
      //                       child: const Icon(
      //                         TablerIcons.align_left,
      //                         color: Colorz.simpleText,
      //                         size: 35,
      //                       ),
      //                     ),
      //                     InkWell(
      //                       onTap: () {},
      //                       child: const Icon(
      //                         TablerIcons.bell,
      //                         color: Colorz.simpleText,
      //                         size: 30,
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(
      //                   top: 50.0,
      //                   left: 20.0,
      //                 ),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       "Hi Jhon Smith",
      //                       style: Theme.of(context)
      //                       .textTheme
      //                       .titleMedium!
      //                       .copyWith(color: Colorz.simpleText,),
      //                     ),
      //                     const SizedBox(height: 8.0,),
      //                     Text(
      //                       "Good Morning",
      //                       style: Theme.of(context)
      //                       .textTheme
      //                       .titleLarge!
      //                       .copyWith(color: Colorz.simpleText,fontWeight: FontWeight.w600),
      //                     )
      //                   ],
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         Container(
      //           decoration: const BoxDecoration(
      //             color: Colorz.screenBackground,
      //             borderRadius: BorderRadius.only(
      //               topLeft: Radius.circular(30),
      //               topRight: Radius.circular(30)
      //             ),
      //           ),
      //           // height: height ,
      //           // width: width,
      //           child: Column(
      //             children: [
      //               Padding(
      //                 padding: const EdgeInsets.only(
      //                   top: 20.0,
      //                   left: 20.0,
      //                 ),
      //                 child: Row(
      //                   children: [
      //                     Text(
      //                       "What are you looking for today ?",
      //                       style: Theme.of(context)
      //                       .textTheme
      //                       .bodyMedium!
      //                       .copyWith(color: Colorz.textSelection,fontWeight: FontWeight.w600),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const SizedBox(height: 8.0,),
      //               GridView.builder(
      //                 shrinkWrap: true,
      //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                   crossAxisCount: 2,
      //                   mainAxisExtent: 3,
      //                 ),
      //                 scrollDirection: Axis.vertical,
      //                 itemBuilder: (context, index) {
      //                   return Container();
      //                 },
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
