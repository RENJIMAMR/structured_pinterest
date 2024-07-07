import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/dummydb.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: CircleBorder(
          eccentricity: .9,
        ),
        leading: Icon(
          Icons.search,
          color: ColorConstants.greyShade_8,
          size: 24,
        ),
        title: Text(
          'Search for ideas',
          style: TextStyle(
            color: ColorConstants.Grey,
            fontSize: 17,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.camera_alt_rounded,
              size: 24,
              color: ColorConstants.greyShade_8,
            ),
          )
        ],
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 3),
        // width:  ,)
      ),
    );
  }
}
