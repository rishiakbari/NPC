import 'package:flutter/material.dart';
import '../utils/colorz.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
  });

  final String? title;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colorz.appBar,
      leading: Navigator.of(context).canPop()
          ? IconButton(
              icon: const Icon(Icons.chevron_left),
              iconSize: 30.0,
              highlightColor: Colors.transparent,
              onPressed: () => Navigator.of(context).pop(),
            )
          : IconButton(
              icon: const Icon(Icons.menu),
              iconSize: 30.0,
              highlightColor: Colors.transparent,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
      title: title != null ? Text(title!) : null,
      actions: actions,
    );
  }
}
