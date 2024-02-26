import 'package:flutter/material.dart';
import 'package:npc/utils/colorz.dart';

class OnboardModel{
  String img;
  String text;
  String desc;
  Color bg;
  // Color button;

  OnboardModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    // required this.button,
     });
}

List<OnboardModel> screens = <OnboardModel>[
  OnboardModel(
    img: "assets/images/24.jpg", 
    text: "Welcome to New\nPark Cleaning", 
    desc: "Reference site about Lorem\nIpsum, giving information origins\nas well as a random", 
    bg: Colorz.main,  
  ),
  OnboardModel(
    img: "assets/images/60.jpg", 
    text: "Easy Track Order", 
    desc: "Reference site about Lorem\nIpsum, giving information origins\nas well as a random", 
    bg: Colorz.main,
  ),
  OnboardModel(
    img: "assets/images/61.jpg", 
    text: "Door to Door Cleaning", 
    desc: "Reference site about Lorem\nIpsum, giving information origins\nas well as a random", 
    bg: Colorz.main,
  ),
];