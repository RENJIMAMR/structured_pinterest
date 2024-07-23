import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
//row card for your account in profile page
class TextRowcard extends StatelessWidget {
  const TextRowcard({super.key, required this.title, this.iconChange = true});
  final String title;
  final bool iconChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Spacer(),
            Icon(
              iconChange
                  ? Icons.arrow_forward_ios_rounded
                  : Icons.arrow_outward_outlined,
              color: ColorConstants.BlackMain,
              size: 20,
            )
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
