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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'All',
          style: TextStyle(
              shadows: [Shadow(offset: Offset(0, -8), color: Colors.black)],
              // textBaseline: TextBaseline.values,
              decoration: TextDecoration.underline,
              decorationThickness: 4,
              color: ColorConstants.TransparentMain,
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
                            likeCount: Dummydb.Dataimage[index]['likeCount'],
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
                ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(Dummydb.Dataimage[index]['imagepath'])),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.more_horiz,
                      color: ColorConstants.BlackMain,
                      size: 25,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
