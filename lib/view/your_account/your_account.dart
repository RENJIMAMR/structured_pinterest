import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/your_account/widget/text_rowCard.dart';

class YourAccount extends StatelessWidget {
  const YourAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Your account',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: ColorConstants.Grey.withOpacity(.3),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Renjima',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        'View profile',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ColorConstants.BlackMain,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Settings',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              TextRowcard(title: 'Account management'),
              TextRowcard(title: 'Profile visibility'),
              TextRowcard(title: 'Home feed tuner'),
              TextRowcard(title: 'Claimed accounts'),
              TextRowcard(title: 'Social permissions'),
              TextRowcard(title: 'Notifications'),
              TextRowcard(title: 'Privacy and data'),
              TextRowcard(title: 'Reports and violation centre'),
              Text(
                'Settings',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              TextRowcard(title: 'Switch account'),
              TextRowcard(title: 'Add account'),
              TextRowcard(title: 'Security'),
              Text(
                'Log out',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Support',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              TextRowcard(
                title: 'Help Centre',
                iconChange: false,
              ),
              TextRowcard(
                title: 'Terms of Service',
                iconChange: false,
              ),
              TextRowcard(
                title: 'Privacy Policy',
                iconChange: false,
              ),
              TextRowcard(
                title: 'About',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
