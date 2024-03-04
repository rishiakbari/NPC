import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  static const routeName = '/check-out-screen';

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController couponController = TextEditingController();
  Future<void> refresh() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Check out",
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 10.0, bottom: 10.0),
                      child: Container(
                        height: height * 0.06,
                        width: width * 0.13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFFF4141),
                                Color(0xFFEB2323),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        child: SvgPicture.asset(
                          "assets/icons/notesdatealt.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Colorz.textSelection,
                                      fontWeight: FontWeight.w600)),
                          Text(
                            "10 jun, 2021",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: height * 0.06,
                      width: width * 0.13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFFE00D),
                              Color(0xFFFEA127),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )),
                      child: SvgPicture.asset(
                        "assets/icons/time-3.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tme",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Colorz.textSelection,
                                      fontWeight: FontWeight.w600)),
                          Text(
                            "8:00 am",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListTile(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
                tileColor: Colorz.main,
                title: Text(
                  "Order Summary",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colorz.simpleText, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colorz.appBar,
                    borderRadius: BorderRadius.circular(2)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 20.0, top: 20.0, bottom: 20.0),
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
                            "2 x \$50",
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
                            "2 x \$50",
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
                            "2 x \$50",
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
                            "Balcony",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                          const Spacer(),
                          Text(
                            "2 x \$50",
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
                            "2 x \$50",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colorz.textSelection),
                          ),
                        ],
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Have you Any  coupon ?",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.main,
                                    fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: CustomTextFormField(
                              controller: couponController,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      CustomTextFormField(
                        hintText: "Special Request Write here",
                        controller: _controller,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Subtotal (5 items)",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "\$2500",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.redText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Discount",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "\$120",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.redText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Tax",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "\$120",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.redText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Total Amount",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            "\$2500",
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
                height: 20.0,
              ),
              RoundedButtonWidget(
                minWidth: width * 0.9,
                text: "Process to Checkout",
                textColor: Colorz.simpleText,
                onPressed: () {},
              )
            ],
          ),
        )),
      ),
    );
  }
}
