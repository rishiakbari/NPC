import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';

import '../utils/colorz.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  static const routeName = '/booking-screen';

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Booking"),
      body: CustomSingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colorz.appBar),
                  child: Column(
                    children: [
                      Text(
                        "Date",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colorz.textSecondary,
                            fontWeight: FontWeight.w600),
                      ),
                      const Divider(
                        color: Colorz.textSecondary,
                        thickness: 1.5,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
