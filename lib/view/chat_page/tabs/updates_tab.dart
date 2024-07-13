import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/chat_page/widgets/rowcard.dart';
import 'package:structured_pinterest/view/chat_page/widgets/still_searching_card.dart';
import 'package:structured_pinterest/view/dummydb.dart';

class UpdatesTab extends StatelessWidget {
  const UpdatesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            Text(
              'Seen',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Column(
                children: List.generate(
              Dummydb.stillSearchingData.length,
              (index) => StillSearchingCard(
                  topic: Dummydb.stillSearchingData[index]['topic'],
                  week: Dummydb.stillSearchingData[index]['week']),
            )),
            Column(
              children: List.generate(
                  Dummydb.rowCardData.length,
                  (index) => Rowcard(
                      imageurl: Dummydb.rowCardData[index]['imageurl'],
                      title: Dummydb.rowCardData[index]['title'],
                      week: Dummydb.rowCardData[index]['week'])),
            ),
            Text(
              'Try Searching for more ideas to be inspired',
              style: TextStyle(
                  fontSize: 15,
                  color: ColorConstants.BlackMain.withOpacity(.7)),
            ),
            Column(
                children: List.generate(
              Dummydb.moreIdeasData.length,
              (index) => Rowcard(
                  imageurl: Dummydb.moreIdeasData[index]['imageurl'],
                  title: Dummydb.moreIdeasData[index]['title'],
                  week: Dummydb.moreIdeasData[index]['week']),
            ))
          ],
        ),
      ),
    );
  }
}
