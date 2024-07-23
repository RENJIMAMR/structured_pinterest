import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/utils/constants/image_constatnts.dart';
import 'package:structured_pinterest/video_player.dart';
import 'package:structured_pinterest/view/carousel_detailing_screen/carousel_detailing_screen.dart';
import 'package:structured_pinterest/view/dummydb.dart';
import 'package:structured_pinterest/view/search_page/Widget/row_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    super.key,
  });

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int currentpage = 0;
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //carousel slider
          Stack(children: [
            CarouselSlider(
                items: List.generate(
                    Dummydb.pageview_data.length,
                    (index) => InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              List urlList =
                                  Dummydb.carouselDetailingData[index]
                                      ['image_url'] as List;
                              List captList =
                                  Dummydb.carouselDetailingData[index]
                                      ['caption'] as List;
                              return CarouselDetailingScreen(
                                imagesList: urlList,
                                searchTitle: Dummydb
                                    .carouselDetailingData[index]['title'],
                                description:
                                    Dummydb.carouselDetailingData[index]
                                        ['description'],
                                image_url: urlList[index],
                                caption: captList[index],
                                captionList: captList,
                              );
                            }));

                            setState(() {});
                          },
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        Dummydb.pageview_data[index]['url']),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        textAlign: TextAlign.center,
                                        Dummydb.pageview_data[index]['profile'],
                                        maxLines: 2,
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
                                  )
                                ]),
                          ),
                        )),
                options: CarouselOptions(
                  aspectRatio: 2,
                  viewportFraction: 1,
                  padEnds: false,
                  // reverse:e==carousalDataList.length,
                  // enlargeFactor: double.infinity,
                  // enlargeCenterPage: true,
                  height: 350,
                  // pauseAutoPlayOnTouch: true,
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  onPageChanged: (value, _) {
                    setState(() {
                      currentpage = value;
                    });
                  },
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 8, right: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none),
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
          SizedBox(
            height: 5,
          ),
          buildCarouselIndicator(),
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
              child: InkWell(
                // onTap: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => VideoPlayer(),
                //       ));
                // },
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

  buildCarouselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < Dummydb.pageview_data.length; i++)
          Container(
            height: i == currentpage ? 12 : 12,
            width: i == currentpage ? 12 : 12,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: i == currentpage
                  ? ColorConstants.BlackMain
                  : ColorConstants.Grey,
              shape: BoxShape.circle,
            ),
          )
      ],
    );
  }
}
