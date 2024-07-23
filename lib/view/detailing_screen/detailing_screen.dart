import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/utils/constants/image_constatnts.dart';

class DetailingPage extends StatelessWidget {
  const DetailingPage(
      {super.key,
      required this.images,
      required this.description,
      required this.profile_pic,
      required this.name,
      required this.followers,
      required this.likeCount});
  final String images, profile_pic, description, name, followers;
  final int likeCount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                _showBottomSheetOptions(context);
              },
              child: Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                // height: 400,
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images), fit: BoxFit.cover),
                ),
              ),
              //   CircleAvatar(
              //   radius: 16,
              //   backgroundColor: Colors.transparent.withOpacity(.3),
              //   child: Icon(
              //     Icons.,
              //     color: Colors.white,
              //     size: 25,
              //   ),
              // ),
            ]),
            Padding(
              padding: const EdgeInsets.all(
                19,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(profile_pic),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 20,
                            color: ColorConstants.BlackMain,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        followers,
                        style: TextStyle(
                          fontSize: 17,
                          color: ColorConstants.BlackMain,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 19, vertical: 16),
                    decoration: BoxDecoration(
                      color: ColorConstants.Grey.withOpacity(.3),
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.BlackMain,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Expanded(
                child: Text(
                  maxLines: 7,
                  description,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.favorite,
                      color: ColorConstants.WhiteMain,
                      size: 13,
                    ),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstatnts.chatBubble))),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 19, vertical: 19),
                    decoration: BoxDecoration(
                      color: ColorConstants.Grey.withOpacity(.3),
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Text(
                      'Visit',
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.BlackMain,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 19, vertical: 19),
                    decoration: BoxDecoration(
                      color: ColorConstants.RedMain,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.WhiteMain,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.share,
                    color: ColorConstants.BlackMain,
                    size: 30,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              endIndent: 10,
              indent: 10,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'What do you think?',
                        style: TextStyle(
                            fontSize: 20,
                            color: ColorConstants.BlackMain,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        likeCount.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            color: ColorConstants.BlackMain,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.favorite_outline_sharp,
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.Grey.withOpacity(.3),
                        radius: 27,
                        child: Text(
                          'R',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorConstants.Grey.withOpacity(.3)),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            fillColor: ColorConstants.WhiteMain,
                            filled: true,
                            hintText: 'Add a comment',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showBottomSheetOptions(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.close,
                  size: 35,
                  color: ColorConstants.BlackMain,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Options',
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.BlackMain,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Follow $name',
              style: TextStyle(
                  fontSize: 23,
                  color: ColorConstants.BlackMain,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Copy link',
              style: TextStyle(
                  fontSize: 23,
                  color: ColorConstants.BlackMain,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Download image',
              style: TextStyle(
                  fontSize: 23,
                  color: ColorConstants.BlackMain,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hide pin',
              style: TextStyle(
                  fontSize: 23,
                  color: ColorConstants.BlackMain,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Report pin',
              style: TextStyle(
                  fontSize: 23,
                  color: ColorConstants.BlackMain,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "This goes against Pinterest's Community Guidelines",
              style: TextStyle(
                fontSize: 20,
                color: ColorConstants.BlackMain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
