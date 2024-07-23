//carousel detailing screen of search screen
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/dummydb.dart';

class CarouselDetailingScreen extends StatelessWidget {
  const CarouselDetailingScreen(
      {super.key,
      required this.searchTitle,
      required this.description,
      required this.image_url,
      required this.imagesList,
      required this.caption,
      required this.captionList});
  final String searchTitle, description, image_url, caption;
  final List imagesList, captionList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: ColorConstants.BlackMain,
                    size: 30,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: searchTitle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none),
                      fillColor: ColorConstants.Grey.withOpacity(.2),
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              description,
              maxLines: 3,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            MasonryGridView.builder(
                shrinkWrap: true,
                itemCount: imagesList.length,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          image: NetworkImage(imagesList[index]),
                          // fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              captionList[index],
                              maxLines: 2,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.more_horiz,
                                color: ColorConstants.BlackMain,
                              ),
                              // Spacer()
                              SizedBox(
                                height: 5,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  );
                }),
          ]),
        ),
      ),
    );
  }
}
