import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';

class PinRowcard extends StatelessWidget {
  const PinRowcard(
      {super.key,
      required this.dpColor,
      required this.letter,
      this.isColor = true,
      required this.name,
      required this.mailid});
  final Color dpColor;
  final String letter, name, mailid;
  final bool isColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 31,
          backgroundColor: dpColor,
          child: Text(
            letter,
            style: TextStyle(
                fontSize: 27,
                color: isColor
                    ? ColorConstants.BlackMain
                    : ColorConstants.WhiteMain),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              mailid,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(
              color: ColorConstants.Grey.withOpacity(.3),
              borderRadius: BorderRadius.circular(17)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'Add',
              style: TextStyle(
                  fontSize: 18,
                  color: ColorConstants.BlackMain,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        )
      ],
    );
  }
}
