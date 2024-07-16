import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/profile_page/tabs/boards.dart';
import 'package:structured_pinterest/view/profile_page/tabs/pins.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: ColorConstants.Grey.withOpacity(.2),
                        child: Text(
                          'R',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBar(
                          labelColor: ColorConstants.BlackMain,
                          indicatorColor: ColorConstants.BlackMain,
                          indicatorSize: TabBarIndicatorSize.label,
                          dividerHeight: 0,
                          tabs: [
                            Text(
                              'Pins',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Boards',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
                Expanded(child: TabBarView(children: [Pins(), Boards()]))
              ],
            )));
  }
}
