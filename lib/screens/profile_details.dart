import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:npc/screens/setting_screen.dart';
import 'package:npc/widgets/custom_rounded_button.dart';
import 'package:npc/widgets/custom_single_child_scroll_view.dart';
import 'package:npc/widgets/custom_text_form_field.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../utils/colorz.dart';

class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({super.key});

  static const routeName = '/profile-detail-screen';

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      appBar: AppBar(
          title: Text(
            "Profile Details",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colorz.textSelection, fontWeight: FontWeight.w600),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(SettingScreen.routeName);
            },
            child: const Icon(
              TablerIcons.align_left,
              size: 30.0,
              color: Colorz.textSelection,
            ),
          )),
      // appBar: const CustomAppBar(
      //   title: "Profile Details",
      // ),
      body: CustomSingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colorz.appBar, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colorz.textSecondary,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text("Jhon Smitha",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colorz.textSelection,
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Account Credit:",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colorz.textSelection),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CustomTextFormField(
                  controller: _nameController,
                  hintText: "Name",
                  suffixIcon: const Icon(
                    Icons.edit,
                    color: Colorz.textSecondary,
                  ),
                  onTap: () {},
                ),
                CustomTextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  hintText: "Phone number",
                  suffixIcon: const Icon(
                    Icons.edit,
                    color: Colorz.textSecondary,
                  ),
                  onTap: () {},
                ),
                CustomTextFormField(
                  controller: _emailController,
                  hintText: "Email",
                  suffixIcon: const Icon(
                    Icons.edit,
                    color: Colorz.textSecondary,
                  ),
                  onTap: () {},
                ),
                CustomTextFormField(
                  controller: _addressController,
                  hintText: "Address",
                  suffixIcon: const Icon(
                    Icons.edit,
                    color: Colorz.textSecondary,
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 15.0,
                ),
                RoundedButtonWidget(
                  text: "Save Now",
                  textColor: Colorz.simpleText,
                  onPressed: () {
                    if (_nameController.text.isNotEmpty &&
                        _phoneController.text.isNotEmpty &&
                        _emailController.text.isNotEmpty &&
                        _addressController.text.isNotEmpty) {
                    } else {
                      //show error message
                      Fluttertoast.showToast(
                        msg: "Please fill the fields",
                      );
                    }
                    // Navigator.of(context).pushNamed(CouponScreen.routeName);
                  },
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
