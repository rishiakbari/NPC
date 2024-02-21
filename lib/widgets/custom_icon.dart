import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
    this.icon, {
    super.key,
    this.size,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.color,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  });

  final IconData? icon;
  final double? size;
  final double? fill;
  final double? weight;
  final double? grade;
  final double? opticalSize;
  final Color? color;
  final List<Shadow>? shadows;
  final String? semanticLabel;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0.0, -2.0, 0.0),
      child: Icon(
        icon,
        color: color,
        fill: fill,
        grade: grade,
        key: key,
        opticalSize: opticalSize,
        semanticLabel: semanticLabel,
        shadows: shadows,
        size: size,
        textDirection: textDirection,
        weight: weight,
      ),
    );
  }
}
