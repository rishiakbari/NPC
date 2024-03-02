import 'package:flutter/material.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';

class PromoDetailScreen extends StatefulWidget {
  const PromoDetailScreen({super.key});

  static const routeName = '/promo-detail-screen';

  @override
  State<PromoDetailScreen> createState() => _PromoDetailScreenState();
}

class _PromoDetailScreenState extends State<PromoDetailScreen> {
  final TextEditingController promoCodeController = TextEditingController();
  Future<void> refresh() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      appBar: const CustomAppBar(title: "Promo Details"),
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
                height: height * 0.24,
                width: width,
                decoration: BoxDecoration(
                  color: Colorz.textSecondary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Fridy\nAround City",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "50%",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    color: Colorz.simpleText,
                                    fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Discount",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.textSelection,
                                    fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "#CITY2021",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colorz.redText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 20.0, left: 15.0, bottom: 10.0),
                      child: Container(
                        height: height,
                        width: width * 0.40,
                        decoration: BoxDecoration(
                            color: Colorz.cameraBackground,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colorz.appBar,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get 20% off Delivery",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Colorz.textSelection,
                                fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Available until 24 July 2020",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colorz.textSecondary,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Use this voucher in payment page and enjoy your 5% off",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colorz.textSelection,
                                ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      CustomTextFormField(
                        hintText: "Promo Code",
                        controller: promoCodeController,
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Terms & Conditions",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colorz.textSelection,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('\u2022',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colorz.main,
                                      fontSize: 30,
                                      height: 1,
                                      fontWeight: FontWeight.w600)),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                              child: Text(
                                  "Lorem cannot be held responsible for the prizes, products or services offered to users through the promotions.",
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colorz.textSecondary))),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('\u2022',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colorz.main,
                                      fontSize: 30,
                                      height: 1,
                                      fontWeight: FontWeight.w600)),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                              child: Text(
                                  "Lorem cannot be held responsible for the prizes, products or services offered to users through the promotions.",
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colorz.textSecondary))),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('\u2022',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colorz.main,
                                      fontSize: 30,
                                      height: 1,
                                      fontWeight: FontWeight.w600)),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                              child: Text(
                                  "Lorem cannot be held responsible for the prizes, products or services offered to users through the promotions.",
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colorz.textSecondary))),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
