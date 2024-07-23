import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/dummydb.dart';

class PinDetailing extends StatelessWidget {
  const PinDetailing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 0),
              child: Row(
                children: [
                  Icon(
                    Icons.close,
                    size: 40,
                    color: ColorConstants.BlackMain,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.question_mark_sharp,
                    size: 30,
                    color: ColorConstants.BlackMain,
                  ),
                  Spacer(),
                  Text(
                    'All photos',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: ColorConstants.BlackMain,
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorConstants.Grey.withOpacity(.3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.Grey),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: Dummydb.pinnedPics.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3),
                  itemBuilder: (context, index) => Image.network(
                    Dummydb.pinnedPics[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: ColorConstants.Grey.withOpacity(.3),
                    radius: 28,
                    child: Icon(
                      Icons.camera_alt_rounded,
                      size: 30,
                      color: ColorConstants.BlackMain,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstants.Grey.withOpacity(.3),
                    radius: 28,
                    child: Icon(
                      Icons.language_outlined,
                      size: 30,
                      color: ColorConstants.BlackMain,
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorConstants.BlackMain,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Icon(
                          Icons.snippet_folder_rounded,
                          color: ColorConstants.WhiteMain,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
