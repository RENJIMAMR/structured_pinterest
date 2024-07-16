import 'package:flutter/material.dart';

import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/utils/constants/image_constatnts.dart';
import 'package:structured_pinterest/view/dummydb.dart';

class InboxTab extends StatelessWidget {
  const InboxTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
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
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Requests',
              style: TextStyle(
                color: ColorConstants.BlackMain.withOpacity(.8),
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              children: [
                Stack(children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                  ),
                  Positioned(
                    top: 23,
                    left: 23,
                    child: (CircleAvatar(
                      backgroundColor: ColorConstants.Grey.withOpacity(.2),
                      radius: 20,
                    )),
                  ),
                  Positioned(
                    bottom: 23,
                    right: 23,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(ImageConstatnts.r),
                    ),
                  ),
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Remmisha M R',
                      style: TextStyle(
                        color: ColorConstants.BlackMain.withOpacity(.8),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Send you a message',
                      style: TextStyle(
                        color: ColorConstants.BlackMain.withOpacity(.3),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: ColorConstants.Grey.withOpacity(.4),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Preview',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Remove',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '20 Dec 2021',
                      style: TextStyle(
                        color: ColorConstants.BlackMain.withOpacity(.3),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Messages',
              style: TextStyle(
                color: ColorConstants.BlackMain.withOpacity(.8),
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              children: [
                Stack(children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                  ),
                  Positioned(
                    top: 23,
                    left: 23,
                    child: (CircleAvatar(
                      backgroundColor: ColorConstants.Grey.withOpacity(.2),
                      radius: 20,
                    )),
                  ),
                  Positioned(
                    bottom: 23,
                    right: 23,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage(ImageConstatnts.pinterest_logo),
                    ),
                  ),
                ]),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pinterest India',
                      style: TextStyle(
                          color: ColorConstants.BlackMain.withOpacity(.8),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                            angle: 45,
                            child: Icon(
                              Icons.arrow_circle_up_outlined,
                              color: ColorConstants.Grey,
                              size: 15,
                            )),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Sent a Pin',
                          style: TextStyle(
                              color: ColorConstants.BlackMain.withOpacity(.8),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '21 jul 2022',
                      style: TextStyle(
                        color: ColorConstants.BlackMain.withOpacity(.5),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: ColorConstants.RedMain,
                    )
                  ],
                ),
              ],
            ),
          ),
          Text(
            'Contacts',
            style: TextStyle(
              color: ColorConstants.BlackMain.withOpacity(.8),
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: Dummydb.InboxData.length,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(Dummydb.InboxData[index]['url']),
              ),
              title: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Dummydb.InboxData[index]['name'],
                        style: TextStyle(
                          color: ColorConstants.BlackMain.withOpacity(.5),
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Say Hello',
                            style: TextStyle(
                              color: ColorConstants.BlackMain.withOpacity(.5),
                              fontSize: 12,
                            ),
                          ),
                          Icon(
                            Icons.waving_hand_sharp,
                            color: ColorConstants.yellowMain,
                            size: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, bottom: 20),
            child: Row(
              children: [
                CircleAvatar(
                  // radius: 25,
                  backgroundColor: ColorConstants.Grey.withOpacity(.5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person_add,
                      color: ColorConstants.WhiteMain.withOpacity(.8),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Invite Friends',
                    style: TextStyle(
                      color: ColorConstants.BlackMain.withOpacity(.8),
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Connect to start chatting',
                    style: TextStyle(
                      color: ColorConstants.BlackMain.withOpacity(.3),
                      fontSize: 12,
                    ),
                  ),
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
