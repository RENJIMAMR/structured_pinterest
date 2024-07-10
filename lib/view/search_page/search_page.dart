import 'dart:math';
import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/utils/constants/image_constatnts.dart';
import 'package:structured_pinterest/view/dummydb.dart';
import 'package:structured_pinterest/view/search_page/Widget/row_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    super.key,
  });
  // final List <String> ideas_pic_url=[];
  // final List<String> container_pic;
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 400,
            child: Stack(children: [
              PageView.builder(
                itemCount: Dummydb.pageview_data.length,
                itemBuilder: (context, index) => Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        Dummydb.pageview_data[index]['profile'],
                        maxLines: 4,
                        style: TextStyle(
                          fontSize: 17,
                          color: ColorConstants.WhiteMain,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        Dummydb.pageview_data[index]['title'],
                        maxLines: 4,
                        style: TextStyle(
                            fontSize: 20,
                            color: ColorConstants.WhiteMain,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage(Dummydb.pageview_data[index]['url']),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, left: 8, right: 8),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      fillColor: ColorConstants.WhiteMain,
                      filled: true,
                      hintText: 'Search',
                      prefixIconColor: ColorConstants.Grey,
                      suffixIconColor: ColorConstants.Grey,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        child: Icon(Icons.search),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        child: Icon(Icons.camera_alt_rounded),
                      )),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 7,
          ),
          Center(
            child: SizedBox(
              height: 14,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CircleAvatar(
                        radius: 7,
                        backgroundColor: ColorConstants.Grey,
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 3,
                      ),
                  itemCount: Dummydb.pageview_data.length),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Ideas from Creators',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 342,
            child: Padding(
              padding: const EdgeInsets.only(left: 7),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Dummydb.idea_pics_url.length,
                itemBuilder: (context, index) => Stack(children: [
                  Container(
                    height: 300,
                    width: 180,
                    decoration: BoxDecoration(
                        color: ColorConstants.Blue,
                        image: DecorationImage(
                            image: NetworkImage(Dummydb.idea_pics_url[index]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(29)),
                  ),
                  Positioned(
                    top: 260,
                    right: 50,
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: ColorConstants.WhiteMain,
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(Dummydb.profile_pic[index]),
                        radius: 40,
                      ),
                    ),
                  )
                ]),
                separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ideas for you',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: Dummydb.ideas.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemBuilder: (context, index) => Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: NetworkImage(Dummydb.ideas[index]['url']),
                    fit: BoxFit.cover),
                // color: Colors.amberAccent,
              ), // width: ,

              child: Center(
                  child: Text(
                Dummydb.ideas[index]['title'],
                style: TextStyle(
                    color: ColorConstants.WhiteMain,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Popular on Pinterest',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: Dummydb.popularIdeas.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemBuilder: (context, index) => Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: NetworkImage(Dummydb.popularIdeas[index]['url']),
                    fit: BoxFit.cover),
                // color: Colors.amberAccent,
              ), // width: ,

              child: Center(
                  child: Text(
                Dummydb.popularIdeas[index]['title'],
                style: TextStyle(
                    color: ColorConstants.WhiteMain,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    ));
  }
}
