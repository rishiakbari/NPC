import 'package:flutter/material.dart';

import '../utils/colorz.dart';

class SubtitalScreen extends StatefulWidget {
  const SubtitalScreen({super.key});

  @override
  State<SubtitalScreen> createState() => _SubtitalScreenState();
}

class _SubtitalScreenState extends State<SubtitalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
    );
  }
}