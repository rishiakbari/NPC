import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_time_line.dart';
import 'package:tabler_icons/tabler_icons.dart';
import '../utils/colorz.dart';

class OrderStatusScreen extends StatefulWidget {
  const OrderStatusScreen({super.key});

  static const routeName = '/order-status-screen';

  @override
  State<OrderStatusScreen> createState() => _OrderStatusScreenState();
}

class _OrderStatusScreenState extends State<OrderStatusScreen> {
  Future<void> refresh() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Order Placed",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("08-09-2020, 12:02pm"),
        iconWidget: Container(
          // padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colorz.main,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText("Booking Approved"),
        subtitle: StepperText("08-09-2020, 12:02pm"),
        iconWidget: Container(
          // padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colorz.main,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.check, color: Colors.white),
        )),
    StepperData(
        title: StepperText("On the way"),
        subtitle: StepperText("08-09-2020, 12:02pm"),
        iconWidget: Container(
          // padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colorz.main,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.check, color: Colors.white),
        )),
    StepperData(
        title: StepperText("Cleaner on his way",
            textStyle: const TextStyle(color: Colors.grey)),
        subtitle: StepperText("08-09-2020, 12:02pm"),
        iconWidget: Container(
          // padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colorz.main,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText("Delivered",
            textStyle: const TextStyle(color: Colors.grey)),
        subtitle: StepperText("08-09-2020, 12:02pm"),
        iconWidget: Container(
          // padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colorz.main,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Bookoing Tracking",
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(TablerIcons.map))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        backgroundColor: Colorz.main,
        color: Colorz.appBar,
        child: CustomSingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colorz.appBar,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Timeline",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        AnotherStepper(
                          stepperList: stepperData,
                          stepperDirection: Axis.vertical,
                          iconWidth: 25,
                          iconHeight: 25,
                          activeBarColor: Colorz.main,
                          inActiveBarColor: Colors.grey,
                          inverted: false,
                          verticalGap: 50,
                          activeIndex: 1,
                          barThickness: 3,
                        ),
                        //first
                        // CustomTimeLine(
                        //   isFirst: true,
                        //   isLast: false,
                        //   isPast: true,
                        //   eventCard: Text(
                        //     "Order Placed",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodyMedium!
                        //         .copyWith(
                        //             color: Colorz.main,
                        //             fontWeight: FontWeight.w600),
                        //   ),
                        //   write: Text(
                        //     "08-09-2020, 12:02pm",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodySmall!
                        //         .copyWith(color: Colorz.textSecondary),
                        //   ),
                        // ),
                        // //middele
                        // CustomTimeLine(
                        //   isFirst: false,
                        //   isLast: false,
                        //   isPast: true,
                        //   eventCard: Text(
                        //     "Booking Approved",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodyMedium!
                        //         .copyWith(
                        //             color: Colorz.textSelection,
                        //             fontWeight: FontWeight.w600),
                        //   ),
                        //   write: Text(
                        //     "08-09-2020, 12:02pm",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodySmall!
                        //         .copyWith(color: Colorz.textSecondary),
                        //   ),
                        // ),
                        // CustomTimeLine(
                        //   isFirst: false,
                        //   isLast: false,
                        //   isPast: true,
                        //   eventCard: Text(
                        //     "Cleaner Assigned",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodyMedium!
                        //         .copyWith(
                        //             color: Colorz.textSelection,
                        //             fontWeight: FontWeight.w600),
                        //   ),
                        //   write: Text(
                        //     "08-09-2020, 12:02pm",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodySmall!
                        //         .copyWith(color: Colorz.textSecondary),
                        //   ),
                        // ),
                        // CustomTimeLine(
                        //   isFirst: false,
                        //   isLast: false,
                        //   isPast: true,
                        //   eventCard: Text(
                        //     "Cleaner on his way",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodyMedium!
                        //         .copyWith(
                        //             color: Colorz.textSelection,
                        //             fontWeight: FontWeight.w600),
                        //   ),
                        //   write: Text(
                        //     "08-09-2020, 12:02pm",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodySmall!
                        //         .copyWith(color: Colorz.textSecondary),
                        //   ),
                        // ),
                        // //last
                        // CustomTimeLine(
                        //   isFirst: false,
                        //   isLast: true,
                        //   isPast: true,
                        //   eventCard: Text(
                        //     "Job Completed",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodyMedium!
                        //         .copyWith(
                        //             color: Colorz.textSelection,
                        //             fontWeight: FontWeight.w600),
                        //   ),
                        //   write: Text(
                        //     "08-09-2020, 12:02pm",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .bodySmall!
                        //         .copyWith(color: Colorz.textSecondary),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                RoundedButtonWidget(
                  minWidth: MediaQuery.of(context).size.width * 0.9,
                  text: "Cancle Order",
                  textColor: Colorz.appBar,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
