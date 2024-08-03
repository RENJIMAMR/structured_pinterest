import 'package:flutter/material.dart';
import 'package:structured_pinterest/view/splash_screen/splash_screen.dart';

import 'package:structured_pinterest/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';

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
