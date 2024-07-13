import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';

class StillSearchingCard extends StatelessWidget {
  const StillSearchingCard(
      {super.key, required this.topic, required this.week});
  final String topic, week;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Still Searching? Explore ideas related to ',
                style: TextStyle(
                    fontSize: 15,
                    color: ColorConstants.BlackMain.withOpacity(.7)),
              ),
              Text(
                topic,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
          Spacer(),
          Text(
            week,
            style: TextStyle(
                color: ColorConstants.BlackMain.withOpacity(.7), fontSize: 15),
          )
        ],
      ),
    );
  }
}
