import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/utils/constants/image_constatnts.dart';
import 'package:structured_pinterest/view/dummydb.dart';

class CarouselUltraDetailingScreen extends StatelessWidget {
  const CarouselUltraDetailingScreen(
      {super.key,
      required this.image_url,
      required this.profile_pic,
      required this.dDescription,
      required this.profile_name,
      required this.followers,
      required this.imageList,
      required this.profile_picList,
      required this.d_descriptionList,
      required this.profile_nameList,
      required this.followersList});
  final String image_url, profile_pic, dDescription, profile_name, followers;
  final List imageList,
      profile_picList,
      d_descriptionList,
      profile_nameList,
      followersList;
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
                      image: NetworkImage(image_url), fit: BoxFit.cover),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(
                19,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(profile_pic),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profile_name,
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
                  dDescription,
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
                      'View',
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
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
