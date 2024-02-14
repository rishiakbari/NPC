import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colorz.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText,
    this.maxLine,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.focusNode,
    this.inputFormatters,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
    this.outLine = false,
    this.fillColor,
  });

  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final bool outLine;
  final int? maxLine;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final Function()? onTap;
  final Function(String)? onChanged;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 7.0,
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        obscureText: obscureText ?? false,
        maxLines: maxLine ?? 1,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colorz.textSelection,
              fontSize: 14
              ),
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colorz.textSecondary,

              ),
          border: outLine
              ? Theme.of(context).inputDecorationTheme.border
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none),
          enabledBorder: outLine
              ? Theme.of(context).inputDecorationTheme.border
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none),
          focusedBorder: outLine
              ? Theme.of(context).inputDecorationTheme.border
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none),
          fillColor: fillColor ?? Colorz.textFormFieldBackground,
          filled: outLine ? false : true,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.normal,
              color: Colorz.textSelection,
            ),
        readOnly: readOnly,
        onTap: onTap,
        onChanged: onChanged,
        onTapOutside: (event) {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
      ),
    );
  }
}
