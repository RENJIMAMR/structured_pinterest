import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/utils/constants/image_constatnts.dart';
import 'package:structured_pinterest/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:structured_pinterest/view/dummydb.dart';
import 'package:structured_pinterest/view/home_page/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    GlobalKey<FormState> emailkey = GlobalKey<FormState>();
    GlobalKey<FormState> passwordkey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.close,
          color: ColorConstants.White_shade_7,
          size: 30,
        ),
        title: Text(
          'Log In',
          style: TextStyle(
              color: ColorConstants.WhiteMain,
              fontSize: 20,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                // width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: ColorConstants.Grey.withOpacity(.3),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: ColorConstants.TransparentMain,
                        backgroundImage:
                            AssetImage(ImageConstatnts.google_logo),
                      ),
                      SizedBox(
                        width: 39,
                      ),
                      Center(
                        child: Text(
                          'Continue with Google',
                          style: TextStyle(
                              color: ColorConstants.BlackMain,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Or',
                style: TextStyle(
                    color: ColorConstants.BlackMain,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                key: emailkey,
                // child: InkWell(
                //   onDoubleTap: () {
                //     if (emailkey.currentState!.validate()) {
                //       print('validated');
                //     } else {
                //       print('Failed to validate');
                //     }
                // },
                child: TextFormField(
                  style:
                      TextStyle(color: ColorConstants.BlackMain, fontSize: 25),
                  validator: (value) {
                    if (value != null &&
                        value.isNotEmpty &&
                        (value.contains('@') || value.contains('.in'))) {
                      return null;
                    } else {
                      return "Enter a Valid Email Id";
                    }
                  },
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      hintText: 'Enter Email Address ',
                      hintStyle: TextStyle(
                          color: ColorConstants.Grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(19),
                          borderSide: BorderSide(
                            width: 3,
                          ))),
                ),
                // ),
              ),
              SizedBox(
                height: 15,
              ),
              Form(
                  key: passwordkey,
                  // child: InkWell(
                  //     onDoubleTap: () {
                  //       if (passwordkey.currentState!.validate()) {
                  //         print("Validated");
                  //       } else {
                  //         print("Failed to Validate");
                  //       }
                  //     },
                  child: TextFormField(
                    style: TextStyle(
                        color: ColorConstants.BlackMain, fontSize: 25),
                    obscureText: true,
                    controller: passwordcontroller,
                    validator: (value) {
                      if (value != null &&
                          value.isNotEmpty &&
                          value.length >= 5 &&
                          value.length <= 12) {
                        return null;
                      } else {
                        return 'Enter a Valid Password';
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(
                            color: ColorConstants.Grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              width: 3,
                            ))),
                  )),
              // ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(400, 60)),
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 250, 21, 4))),
                onPressed: () {
                  if (emailkey.currentState!.validate() &&
                      passwordkey.currentState!.validate()) {
                    if (emailcontroller.text == storegmail) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBarScreen(),
                        ),
                        (route) => false,
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: ColorConstants.RedMain,
                          content: Text(
                            'Invalid Crdentials',
                            style: TextStyle(
                                color: ColorConstants.WhiteMain,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )));
                    }
                  }
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Forgotten Password?',
                style: TextStyle(
                    color: ColorConstants.BlackMain,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
