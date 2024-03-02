import 'package:flutter/material.dart';
import 'package:npc/models/event_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../utils/colorz.dart';

class CustomTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  final write;
  const CustomTimeLine({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.eventCard,
    required this.write,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: LineStyle(
        color: isPast ? Colorz.main : Colorz.textSecondary,
      ),
      indicatorStyle: IndicatorStyle(
          color: isPast ? Colorz.main : Colorz.textSecondary,
          width: 25.0,
          iconStyle: IconStyle(
              iconData: Icons.done,
              color: isPast ? Colorz.appBar : Colorz.main,
              fontSize: 15.0)),
      endChild: EventCard(
        isPast: isPast,
        text: write,
        child: eventCard,
      ),
    );
  }
}
