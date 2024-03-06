import 'package:flutter/material.dart';

import '../utils/colorz.dart';
import 'custom_icon.dart';

class CustomCircleIconButton extends StatelessWidget {
  const CustomCircleIconButton({
    super.key,
    required this.icon,
    this.iconColor,
    this.backgroundColor,
    this.onPressed,
    this.outlinedButton = false,
    this.iconSize,
    this.scale,
    this.image,
  });

  final Function()? onPressed;
  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final bool outlinedButton;
  final double? iconSize;
  final double? scale;
  final double? image;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale ?? 1,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          iconSize: MaterialStateProperty.all(iconSize),
          shape: MaterialStateProperty.all(
            !outlinedButton
                ? const CircleBorder()
                : const CircleBorder(
                    side: BorderSide(
                      color: Colorz.main,
                    ),
                  ),
          ),
          backgroundColor:
              MaterialStateProperty.all(backgroundColor ?? Colorz.main),
        ),
        child: CustomIcon(
          icon: icon.toString(),
          color: iconColor ?? Colorz.textBlack,
        ),
      ),
    );
  }
}
