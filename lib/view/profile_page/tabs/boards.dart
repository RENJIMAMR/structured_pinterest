import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/utils/constants/image_constatnts.dart';
import 'package:structured_pinterest/view/dummydb.dart';
import 'package:structured_pinterest/view/profile_page/widgets/boards_container_card.dart';

class Boards extends StatelessWidget {
  const Boards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Board Suggestions',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      Dummydb.profilePageData.length,
                      (index) => BoardsContainerCard(
                          image_url: Dummydb.profilePageData[index]['url'],
                          title: Dummydb.profilePageData[index]['title'],
                          number: Dummydb.profilePageData[index]['number'])))),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Unorganised ideas',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: ColorConstants.Grey.withOpacity(.3)),
                child: Center(
                  child: Text(
                    'Organise',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                Dummydb.idea_pics_url.length,
                (index) => Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.network(
                        Dummydb.idea_pics_url[index],
                        height: 180,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
