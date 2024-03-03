import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:npc/utils/colorz.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  static const routeName = '/notification-screen';

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const CustomAppBar(title: "Notification"),
      backgroundColor: Colorz.screenBackground,
      body: CustomSingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colorz.appBar,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: Container(
                  height: height * 0.06,
                  width: width * 0.13,
                  decoration: BoxDecoration(
                      color: Colorz.redText,
                      borderRadius: BorderRadius.circular(100)),
                  child: SvgPicture.asset(
                    "assets/icons/Shape-4.svg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                title: Text(
                  "Booking Cancel",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colorz.textSelection, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Booking Canceled",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colorz.textSelection),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colorz.appBar,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: Container(
                  height: height * 0.06,
                  width: width * 0.13,
                  decoration: BoxDecoration(
                      color: Colorz.splashPage,
                      borderRadius: BorderRadius.circular(100)),
                  child: SvgPicture.asset(
                    "assets/icons/icons_notification.svg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                title: Text(
                  "Payment",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colorz.textSelection, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Thank you! Your transaction is com...",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colorz.textSelection),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colorz.appBar,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: Container(
                  height: height * 0.06,
                  width: width * 0.13,
                  decoration: BoxDecoration(
                      color: const Color(0xFF1DBF73),
                      borderRadius: BorderRadius.circular(100)),
                  child: SvgPicture.asset(
                    "assets/icons/Group_3885 Clipped.svg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                title: Text(
                  "Promotion",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colorz.textSelection, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Invite friends - Get 1 coupons each!",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colorz.textSelection),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colorz.appBar,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: Container(
                  height: height * 0.06,
                  width: width * 0.13,
                  decoration: BoxDecoration(
                      color: Colorz.main,
                      borderRadius: BorderRadius.circular(100)),
                  child: SvgPicture.asset(
                    "assets/icons/Shape-2.svg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                title: Text(
                  "Booking Accept",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colorz.textSelection, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "booking has been success...",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colorz.textSelection),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
