import 'package:flutter/material.dart';
import '../utils/colorz.dart';

class CustomSmallButton extends StatelessWidget {
  const CustomSmallButton({
    super.key,
    this.onPressed,
    required this.text,
    this.minWidth,
    this.textColor,
    this.backgroundColor,
    this.gradient,
    this.fitted = false,
    this.isGradient = false,
    this.isUnderlineText = false,
    this.padding,
    this.icon,
    this.width,
  });

  final Function()? onPressed;
  final String text;
  final double? minWidth;
  final double? width;
  final Color? textColor;
  final Color? backgroundColor;
  final Gradient? gradient;
  final bool fitted;
  final bool isGradient;
  final bool isUnderlineText;
  final EdgeInsetsGeometry? padding;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        gradient: gradient ??
            (backgroundColor != null || !isGradient
                ? null
                : const LinearGradient(
                    colors: [
                      Colorz.buttonGradiantOne,
                      Colorz.buttonGradiantTwo,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
        color: backgroundColor ?? Colorz.main,
      ),
      child: MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 8.0,
            ),
        height: 50.0,
        minWidth: fitted ? null : minWidth ?? 100,
        onPressed: onPressed,
        child: icon != null
            ? SizedBox(
                width: fitted ? null : width ?? double.infinity,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) icon!,
                    SizedBox(
                      width: icon != null ? 10 : 0,
                    ),
                    FittedBox(
                      child: Text(
                        text,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: textColor ?? Colors.black,
                                  fontWeight: FontWeight.w600,
                                  decoration: isUnderlineText
                                      ? TextDecoration.underline
                                      : null,
                                  decorationColor: textColor ?? Colors.black,
                                ),
                      ),
                    ),
                  ],
                ),
              )
            : FittedBox(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: textColor ?? Colors.black,
                        fontWeight: FontWeight.w600,
                        decoration:
                            isUnderlineText ? TextDecoration.underline : null,
                        decorationColor: textColor ?? Colors.black,
                      ),
                ),
              ),
      ),
    );
  }
}
