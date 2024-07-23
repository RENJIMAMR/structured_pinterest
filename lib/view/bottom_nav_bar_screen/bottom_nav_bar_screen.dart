import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/chat_page/chat_page.dart';
import 'package:structured_pinterest/view/creating_button/creating_button.dart';
import 'package:structured_pinterest/view/home_page/home_page.dart';
import 'package:structured_pinterest/view/pin_detailing/pin_detailing.dart';
import 'package:structured_pinterest/view/pin_detailing/tabs/pin_rowcard.dart';
import 'package:structured_pinterest/view/profile_page/profile_page.dart';
import 'package:structured_pinterest/view/search_page/search_page.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int selectedIndex = 0;
  bool _switchValue = false;
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
            if (value == 2) {
              _bottom_sheet(context);
              //  to display BottomSheet
            } else {
              setState(() {
                selectedIndex = value;
              });
            }
          },
          currentIndex: selectedIndex,
          backgroundColor: ColorConstants.WhiteMain,
          iconSize: 40,
          unselectedItemColor: ColorConstants.Grey,
          selectedItemColor: ColorConstants.BlackMain,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: ColorConstants.WhiteMain),
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

  Future<dynamic> _bottom_sheet(BuildContext context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      context: context,
      builder: (context) => Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: 30,
                      color: ColorConstants.BlackMain,
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: Text(
                      'Start creating now',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PinDetailing(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ColorConstants.Grey.withOpacity(.2)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Icon(
                              Icons.push_pin_rounded,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Pin',
                        style: TextStyle(
                            fontSize: 15, color: ColorConstants.BlackMain),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  _showBottomSheetBoards(context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _showBottomSheetBoards(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => StatefulBuilder(
                    builder: (context, switchState) => Container(
                          height: 780,
                          decoration: BoxDecoration(
                              color: ColorConstants.WhiteMain,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(28))),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 20, left: 15, right: 8),
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.close,
                                          size: 40,
                                          color: ColorConstants.BlackMain,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Spacer(),
                                      Text(
                                        'Create board',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                          color:
                                              ColorConstants.Grey.withOpacity(
                                                  .3),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 8),
                                          child: Text(
                                            'Next',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: ColorConstants.Grey),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Board name',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText:
                                            "Add a title such as 'DIY' or 'Recipes'",
                                        hintStyle: TextStyle(
                                            color:
                                                ColorConstants.Grey.withOpacity(
                                                    .8)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                                width: 10,
                                                color: ColorConstants.Grey))),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Collaborators',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: ColorConstants.Grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  PinRowcard(
                                    dpColor: ColorConstants.Grey,
                                    letter: 'C',
                                    mailid: 'cath@gmail.com',
                                    name: 'Catherine',
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  PinRowcard(
                                    dpColor: ColorConstants.Pink,
                                    letter: 'F',
                                    name: 'Freddy ',
                                    mailid: 'itsmefreddy@gmail.com',
                                    isColor: false,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  PinRowcard(
                                    dpColor: ColorConstants.Grey,
                                    letter: 'R',
                                    name: 'Reena mariam',
                                    mailid: 'mariam@gmail.com',
                                    isColor: false,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  PinRowcard(
                                    dpColor: ColorConstants.Green,
                                    letter: 'G',
                                    name: 'Griggery',
                                    mailid: 'griggery@gmail.com',
                                    isColor: false,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      CircleAvatar(
                                          radius: 30,
                                          backgroundColor:
                                              ColorConstants.Grey.withOpacity(
                                                  .3),
                                          child: Icon(
                                            Icons.person_add,
                                            color: ColorConstants.BlackMain,
                                            size: 25,
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Add collaborators',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Visibility',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: ColorConstants.Grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Keep this board secret',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: ColorConstants.BlackMain),
                                      ),
                                      Spacer(),
                                      Switch(
                                        value: _switchValue,
                                        onChanged: (value) {
                                          switchState(() {
                                            _switchValue = value;
                                          });
                                          // Navigator.pop(context);
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          maxLines: 2,
                                          textAlign: TextAlign.left,
                                          "if you don't', want others to see this board,keep it secret",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: ColorConstants.Grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorConstants.Grey.withOpacity(.1)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(
                Icons.border_all,
                size: 30,
              ),
            ),
          ),
        ),
        Text(
          'Board',
          style: TextStyle(fontSize: 15, color: ColorConstants.BlackMain),
        ),
      ],
    );
  }
}
