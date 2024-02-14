

import 'package:flutter/material.dart';
import 'package:npc/models/onboard.dart';
import 'package:npc/widgets/custom_rounded_button.dart';

import '../utils/colorz.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const routeName = "/welcome-screen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemCount: screens.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
      Expanded(
        flex: 2,
        child: Image.asset(
         screens[index].img,
          fit: BoxFit.cover,
        ),
      ),
      Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colorz.main,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                 screens[index].text,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(
                          color: Colorz.simpleText,
                          fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                screens[index].desc,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colorz.simpleText, fontSize: 16),
                ),
                SizedBox(
                  height: 25.0,
                ),
                RoundedButtonWidget(
                 text: "Get started",
                 textColor: Colorz.simpleText,
                 isGradient: true,
                 onPressed: () {
                   currentIndex = index;
                    if(index == screens.length - 1){
                      Navigator.pushReplacementNamed(context, '/welcome-login-screen');
                    }
                    _pageController.nextPage(
                      duration: Duration(microseconds: 300), 
                      curve: Curves.bounceIn,
                    );
                 },
                ),
                SizedBox(height: 50.0,),
                SizedBox(
                  height: 10.0,
                  child: ListView.builder(
                    itemCount: screens.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: currentIndex == index ? Colorz.splashPage : Colorz.screenBackground,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          )
                        ],
                      );
                    },),
                )
              ],
            ),
          )),
              ],
          );
        },
              
            ),
    );
  }
}
