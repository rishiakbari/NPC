import 'package:flutter/material.dart';

import '../utils/colorz.dart';

class AudioCallScreen extends StatefulWidget {
  const AudioCallScreen({super.key});

  static const routeName = '/audio-call-screen';

  @override
  State<AudioCallScreen> createState() => _AudioCallScreenState();
}

class _AudioCallScreenState extends State<AudioCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colorz.textSecondary,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Jhon Smith",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colorz.main, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Duration 01:20",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colorz.textSecondary,
                      ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colorz.appBar,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                // child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [

                //   ],
                // ),
              ))
        ],
      ),
    );
  }
}
