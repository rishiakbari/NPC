import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:npc/screens/order_review_screen.dart';
// import 'package:intl/intl.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_small_button.dart';
import 'package:npc/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  static const routeName = '/booking-screen';

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime selectedDate = DateTime.now();
  int currentIndex = 0;
  final TextEditingController location = TextEditingController();
  final List time = [
    "8:00 am",
    "9:00 am",
    "10:00 am",
    "11:00 am",
    "12:00 am",
    "8:00 am",
    "8:00 am",
    "8:00 am",
    "8:00 am",
    "8:00 am",
    "8:00 am",
    "8:00 am",
  ];
  Future<void> refresh() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Booking"),
      body: RefreshIndicator(
        onRefresh: refresh,
        backgroundColor: Colorz.main,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colorz.appBar),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 20.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colorz.textSelection,
                            fontWeight: FontWeight.w600),
                      ),
                      const Divider(
                        // color: Colorz.textSecondary,
                        thickness: 1,
                      ),
                      DatePicker(
                        DateTime.now(),
                        initialSelectedDate: DateTime.now(),
                        selectionColor: Colorz.main,
                        selectedTextColor: Colorz.simpleText,
                        dateTextStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                                color: Colorz.textSelection,
                                fontWeight: FontWeight.w600),
                        monthTextStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                                color: Colorz.textSecondary,
                                fontWeight: FontWeight.w600),
                        dayTextStyle: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(
                                color: Colorz.textSecondary,
                                fontWeight: FontWeight.w600),
                        onDateChange: (date) {
                          setState(() {
                            selectedDate = date;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text("Time",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colorz.textSelection,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              indent: 20.0,
              endIndent: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 10.0,
              ),
              child: Row(
                children: [
                  CustomSmallButton(
                      backgroundColor:
                          currentIndex == 0 ? Colorz.main : Colorz.appBar,
                      text: "Morning",
                      textColor: currentIndex == 0
                          ? Colorz.simpleText
                          : Colorz.textSecondary,
                      onPressed: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      }),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomSmallButton(
                    backgroundColor:
                        currentIndex == 1 ? Colorz.main : Colorz.appBar,
                    text: "Afternoon",
                    textColor: currentIndex == 1
                        ? Colorz.simpleText
                        : Colorz.textSecondary,
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomSmallButton(
                    backgroundColor:
                        currentIndex == 2 ? Colorz.main : Colorz.appBar,
                    text: "Evening",
                    textColor: currentIndex == 2
                        ? Colorz.simpleText
                        : Colorz.textSecondary,
                    onPressed: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: time.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colorz.appBar,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(time[index]),
                            )),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Row(
                children: [
                  Text(
                    "Location",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colorz.textSelection,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20.0, bottom: 30.0),
              child: CustomTextFormField(
                hintText: "Location",
                controller: location,
                onChanged: (p0) {},
              ),
            ),
            RoundedButtonWidget(
              minWidth: MediaQuery.of(context).size.width * 0.9,
              text: "Confirm Booking",
              textColor: Colorz.simpleText,
              onPressed: () {
                Navigator.of(context).pushNamed(OrderReviewScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
