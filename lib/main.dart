import 'package:flutter/material.dart';
import 'package:structured_pinterest/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:structured_pinterest/view/carousel_detailing_screen/carousel_detailing_screen.dart';
import 'package:structured_pinterest/view/chat_page/chat_page.dart';
import 'package:structured_pinterest/view/creating_button/creating_button.dart';
import 'package:structured_pinterest/view/pin_detailing/pin_detailing.dart';
import 'package:structured_pinterest/view/profile_page/profile_page.dart';
import 'package:structured_pinterest/view/search_page/search_page.dart';
import 'package:structured_pinterest/view/splash_screen/splash_screen.dart';

import 'package:structured_pinterest/view/welcome_page/welcome_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
