import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/dummydb.dart';

class Rowcard extends StatelessWidget {
  const Rowcard(
      {super.key,
      required this.imageurl,
      required this.title,
      required this.week});
  final String imageurl, title, week;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                imageurl,
                height: 40,
                width: 30,
              )),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 3,
                  title,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Text(
            week,
            style: TextStyle(
                fontSize: 13, color: ColorConstants.BlackMain.withOpacity(.7)),
          )
        ],
      ),
    );
  }
}
