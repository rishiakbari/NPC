import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:npc/utils/colorz.dart';

class CustomIcon extends StatelessWidget {
  final Color? color;
  final String icon;
  final double? height;
  final double? width;
  final double? padding;
  final int? notificationsCount;
  final Function()? onTap;
  final Function(TapUpDetails details)? onTapUp;
  final Function(TapDownDetails details)? onTapDown;

  const CustomIcon(
      {super.key,
      this.color,
      required this.icon,
      this.height,
      this.width,
      this.padding,
      this.onTap,
      this.onTapUp,
      this.onTapDown,
      this.notificationsCount});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onTapUp: onTapUp,
      onTapDown: onTapDown,
      child: Padding(
        padding: EdgeInsets.all(padding ?? 0),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: color != null
                  ? ColorFilter.mode(color!, BlendMode.srcIn)
                  : null,
              height: height,
              width: width,
            ),
            notificationsCount != null && notificationsCount != 0
                ? Container(
                    height: 20,
                    width: 20,
                    transform: Matrix4.translationValues(8, -9, 0),
                    decoration: const BoxDecoration(
                        color: Colorz.main,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text(
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      '$notificationsCount',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colorz.simpleText,
                          fontWeight: FontWeight.w800),
                    ),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class CustomIcon extends StatelessWidget {
//   const CustomIcon(
//     this.icon, {
//     super.key,
//     this.size,
//     this.fill,
//     this.weight,
//     this.grade,
//     this.opticalSize,
//     this.color,
//     this.shadows,
//     this.semanticLabel,
//     this.textDirection,
//   });

//   final IconData? icon;
//   final double? size;
//   final double? fill;
//   final double? weight;
//   final double? grade;
//   final double? opticalSize;
//   final Color? color;
//   final List<Shadow>? shadows;
//   final String? semanticLabel;
//   final TextDirection? textDirection;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       transform: Matrix4.translationValues(0.0, -2.0, 0.0),
//       child: Icon(
//         icon,
//         color: color,
//         fill: fill,
//         grade: grade,
//         key: key,
//         opticalSize: opticalSize,
//         semanticLabel: semanticLabel,
//         shadows: shadows,
//         size: size,
//         textDirection: textDirection,
//         weight: weight,
//       ),
//     );
//   }
// }
