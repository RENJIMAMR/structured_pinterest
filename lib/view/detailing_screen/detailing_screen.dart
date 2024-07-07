import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';

class DetailingPage extends StatelessWidget {
  const DetailingPage({
    super.key,
    required this.images,
    required this.description,
    required this.profile_pic,
    required this.name,
    required this.followers,
  });
  final String images, profile_pic, description, name, followers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.transparent.withOpacity(.3),
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
            child: Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
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
                    color: ColorConstants.grey_shaded_3,
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
          Expanded(
            child: Text(
              maxLines: 7,
              description,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
