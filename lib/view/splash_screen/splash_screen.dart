import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/image_constatnts.dart';
import 'package:structured_pinterest/view/welcome_page/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => WelcomePage(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/564x/6a/4b/2f/6a4b2f71a0b18c66a1fa1ab88573a571.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
