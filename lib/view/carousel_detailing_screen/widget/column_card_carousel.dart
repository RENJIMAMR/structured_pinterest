import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';

class ColumnCardCarousel extends StatelessWidget {
  const ColumnCardCarousel(
      {super.key,
      required this.title,
      required this.description,
      required this.image_url});
  final String title, description, image_url;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: ColorConstants.BlackMain,
              size: 30,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: title,
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
            itemCount: 5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image: NetworkImage(image_url),
                        // fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.more_horiz,
                          color: ColorConstants.BlackMain,
                        )
                      ],
                    )
                  ],
                )),
      ],
    );
  }
}
