import 'package:flutter/material.dart';
import 'package:structured_pinterest/view/chat_page/chat_page.dart';
import 'package:structured_pinterest/view/profile_page/profile_page.dart';
import 'package:structured_pinterest/view/search_page/search_page.dart';

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
      home: ProfilePage(),
    );
  }
}
