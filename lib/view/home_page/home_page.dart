import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/detailing_screen/detailing_screen.dart';
import 'package:structured_pinterest/view/dummydb.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.BlackMain,
      appBar: AppBar(
        backgroundColor: ColorConstants.BlackMain,
        centerTitle: true,
        title: Text(
          'All',
          style: TextStyle(
              color: ColorConstants.WhiteMain,
              fontSize: 20,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: MasonryGridView.builder(
        itemCount: Dummydb.Dataimage.length,
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(8),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailingPage(
                            images: Dummydb.Dataimage[index]['imagepath'],
                            description: Dummydb.Dataimage[index]
                                ['description'],
                            profile_pic: Dummydb.Dataimage[index]
                                ['profile_pic_url'],
                            name: Dummydb.Dataimage[index]['name'],
                            followers: Dummydb.Dataimage[index]['followers'],
                          )));
            },
            child: Column(
              children: [
                Image.asset(Dummydb.Dataimage[index]['imagepath']),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.more_horiz,
                      color: ColorConstants.WhiteMain,
                      size: 25,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: currentIndex,
      //     onTap: (index) => setState(() => currentIndex = index),
      //     backgroundColor: ColorConstants.BlackMain,
      //     iconSize: 40,
      //     unselectedItemColor: ColorConstants.White_shade_7,
      //     selectedItemColor: ColorConstants.WhiteMain,
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: 'Home',
      //           backgroundColor: ColorConstants.BlackMain),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.search),
      //           label: 'search',
      //           backgroundColor: Colors.black),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.add,
      //           ),
      //           label: 'creator button',
      //           backgroundColor: ColorConstants.BlackMain),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.chat_bubble_outline),
      //           label: 'chat',
      //           backgroundColor: ColorConstants.BlackMain),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.person),
      //           label: 'profile',
      //           backgroundColor: ColorConstants.BlackMain)
      //     ]),
    );
  }
}
