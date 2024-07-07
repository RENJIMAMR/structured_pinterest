import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/chat_page/chat_page.dart';
import 'package:structured_pinterest/view/creating_button/creating_button.dart';
import 'package:structured_pinterest/view/home_page/home_page.dart';
import 'package:structured_pinterest/view/profile_page/profile_page.dart';
import 'package:structured_pinterest/view/search_page/search_page.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int selectedIndex = 0;
  List<Widget> Myscreen = [
    HomePage(),
    SearchPage(),
    CreatingButton(),
    ChatPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Myscreen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          backgroundColor: ColorConstants.BlackMain,
          iconSize: 40,
          unselectedItemColor: ColorConstants.White_shade_7,
          selectedItemColor: ColorConstants.WhiteMain,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: ColorConstants.BlackMain),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'search',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                ),
                label: 'creator button',
                backgroundColor: ColorConstants.BlackMain),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: 'chat',
                backgroundColor: ColorConstants.BlackMain),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'profile',
                backgroundColor: ColorConstants.BlackMain)
          ]),
    );
  }
}
