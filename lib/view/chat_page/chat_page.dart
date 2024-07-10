import 'dart:math';

import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/chat_page/tabs/inbox_tab.dart';
import 'package:structured_pinterest/view/chat_page/tabs/updates_tab.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Column(
        children: [
          TabBar(
              unselectedLabelColor: ColorConstants.Grey,
              labelColor: ColorConstants.BlackMain,
              indicatorColor: ColorConstants.BlackMain,
              indicatorSize: TabBarIndicatorSize.label,
              dividerHeight: 0,
              tabs: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Updates',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 27,
                        width: 20,
                        decoration: BoxDecoration(
                            color: ColorConstants.RedMain,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            '99',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.WhiteMain),
                          ),
                        )),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Inbox',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 27,
                        width: 18,
                        decoration: BoxDecoration(
                            color: ColorConstants.RedMain,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.WhiteMain),
                          ),
                        )),
                  ],
                ),
              ]),
          Expanded(
            child: TabBarView(children: [UpdatesTab(), InboxTab()]),
          )
        ],
      )),
    );
  }
}
