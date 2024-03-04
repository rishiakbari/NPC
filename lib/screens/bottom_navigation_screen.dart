import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:npc/screens/booking_screen.dart';
import 'package:npc/screens/messanger_screen.dart';
import 'package:npc/screens/my_activity_screen.dart';
import 'package:npc/screens/plus_screen.dart';
import 'package:npc/screens/profile_details.dart';
import 'package:tabler_icons/tabler_icons.dart';
import '../utils/colorz.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  static const routeName = '/bottom-navigation-bar-screen';

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => ConvexAppBar(
          items: const [
            TabItem(
              icon: TablerIcons.home,
            ),
            TabItem(icon: Icons.subtitles_outlined),
            TabItem(icon: TablerIcons.plus),
            TabItem(icon: TablerIcons.mail),
            TabItem(icon: TablerIcons.user),
          ],
          style: TabStyle.reactCircle,
          initialActiveIndex: controller.currentIndex.value,
          onTap: (index) => setState(() {
            controller.currentIndex.value = index;
          }),
          backgroundColor: Colorz.appBar,
          activeColor: Colorz.main,
          color: Colorz.textSecondary,
          curveSize: 100,
          height: 70,
          top: -30,
          // curveSize: 80,
        ),
      ),
      body: Obx(() => controller.screens[controller.currentIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final List<Widget> screens = [
    const PlusScreen(),
    const MyActivityScreen(),
    const BookingScreen(),
    const MessangerScreen(),
    const ProfileDetailScreen()
  ];
}
