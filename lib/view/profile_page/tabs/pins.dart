import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';

class Pins extends StatelessWidget {
  const Pins({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fillColor: ColorConstants.grey_shaded_1.withOpacity(.1),
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search your Pins'),
            ),
            Icon(
              Icons.add,
              size: 20,
            )
          ],
        ),
      ],
    );
  }
}
