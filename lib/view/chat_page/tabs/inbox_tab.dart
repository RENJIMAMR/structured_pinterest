import 'package:flutter/material.dart';

import 'package:structured_pinterest/utils/constants/color_constants.dart';

class InboxTab extends StatelessWidget {
  const InboxTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fillColor: ColorConstants.grey_shaded_1.withOpacity(.1),
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search by name or email'),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorConstants.RedMain,
                  child: Icon(
                    Icons.edit_square,
                    color: ColorConstants.WhiteMain,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'New message',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Requests',
              style: TextStyle(
                color: ColorConstants.BlackMain.withOpacity(.5),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Stack(children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: (CircleAvatar(
                      radius: 20,
                    )),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 20,
                    ),
                  ),
                ]),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Remmisha M R',
                      style: TextStyle(
                        color: ColorConstants.BlackMain.withOpacity(.5),
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Send you a message',
                      style: TextStyle(
                        color: ColorConstants.BlackMain.withOpacity(.3),
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
