import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../utils/colorz.dart';

class CustomCountryCodePicker extends StatelessWidget {
  const CustomCountryCodePicker({
    super.key,
    this.initialSelection,
    this.onChanged,
  });

  final String? initialSelection;
  final ValueChanged<CountryCode>? onChanged;

  @override
  Widget build(BuildContext context) {
    final Size displaySize = MediaQuery.of(context).size;
    return CountryCodePicker(
      flagWidth: displaySize.width * 0.05,
      showFlag: true,
      showDropDownButton: true,
      barrierColor: Colorz.screenBackground,
      dialogSize: Size(displaySize.width * 0.8, displaySize.height * 0.7),
      boxDecoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: Colorz.dialogBorder,
        ),
        borderRadius: BorderRadius.circular(8.0),
        gradient: const LinearGradient(
          colors: [
            Colorz.appBar,
            Colorz.screenBackground
            // Colorz.dialogBackgroundGradientOne,
            // Colorz.dialogBackgroundGradientTwo,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Colorz.textSelection,
            fontWeight: FontWeight.normal,
          ),
      dialogTextStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Colorz.textSelection,
          ),
      searchStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.normal,
            color: Colorz.textSelection,
          ),
      searchDecoration: const InputDecoration(
        prefixIconColor: Colorz.main,
      ),
      closeIcon: const Icon(
        Icons.close,
        color: Colorz.main,
      ),
      initialSelection: initialSelection,
      onChanged: onChanged,
    );
  }
}
