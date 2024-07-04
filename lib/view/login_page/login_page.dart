// import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    GlobalKey<FormState> emailkey = GlobalKey<FormState>();
    GlobalKey<FormState> passwordkey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 1000,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/pinterest.welcome.jpg'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                child: Stack(
                  children: [
                    Container(
                      height: 1000,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.transparent,
                              Colors.black,
                              Colors.black,
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30, left: 40, right: 40, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 300,
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/image/logo.pinterset.jpg'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Welcome to Pinterset',
                            style: TextStyle(
                                fontSize: 31,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Form(
                            key: emailkey,
                            child: TextFormField(
                              validator: (value) {
                                if (value != null &&
                                    value.isNotEmpty &&
                                    (value.contains('@') ||
                                        value.contains('.in'))) {
                                  return null;
                                } else {
                                  return 'Enter a valid email';
                                }
                              },
                              controller: emailcontroller,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          width: 3,
                                          color: Color.fromARGB(
                                              255, 231, 239, 244))),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white.withOpacity(.7),
                                        width: 5,
                                        style: BorderStyle.solid),
                                    gapPadding: 8,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: 'Email address',
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(.8),
                                      fontSize: 20)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              if (emailkey.currentState!.validate()) {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                  (route) => false,
                                );
                              } else {
                                print('Invalid mail id');
                              }
                            },
                            onDoubleTap: () {
                              if (emailkey.currentState!.validate()) {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                  (route) => false,
                                );
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(255, 253, 24, 20),
                              ),
                              child: Center(
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: Color.fromARGB(222, 114, 114, 114),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor:
                                        Color.fromARGB(222, 114, 114, 114)
                                            .withOpacity(1),
                                    backgroundImage: AssetImage(
                                      'assets/image/google.3.png',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'Continue with Google  ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "By continuing,you agree to Pinterest's  ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Terms of  ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 41, 15, 236),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Service",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 41, 15, 236),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "and acknowledge that you've read our ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Privacy",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 41, 15, 236),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Policy",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 41, 15, 236),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                ".",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "Notice at collection",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 41, 15, 236),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                ".",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
