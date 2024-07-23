import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/dummydb.dart';

class BoardsContainerCard extends StatelessWidget {
  const BoardsContainerCard(
      {super.key,
      required this.image_url,
      required this.title,
      required this.number});
  final String image_url, title, number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 130,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ColorConstants.Blue,
                    image: DecorationImage(
                        image: AssetImage(image_url), fit: BoxFit.cover)),
              ),
              Positioned(
                top: 40,
                left: 55,
                // left: 0,
                // right: 0,
                child: Container(
                  height: 55,
                  width: 90,
                  decoration: BoxDecoration(
                    color: ColorConstants.WhiteMain,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Create',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
          Text(
            number,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
