// import 'package:flutter/material.dart';
// import 'package:structured_pinterest/utils/constants/color_constants.dart';
// import 'package:structured_pinterest/utils/constants/image_constatnts.dart';
// import 'package:structured_pinterest/view/dummydb.dart';
// import 'package:structured_pinterest/view/login_page/login_page.dart';

// class TrialScreen extends StatelessWidget {
//   const TrialScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController emailcontroller = TextEditingController();

//     GlobalKey<FormState> emailkey = GlobalKey<FormState>();

//     return Scaffold(
//       backgroundColor: ColorConstants.TransparentMain,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Stack(
//             children: [
//               Container(
//                 height: 1000,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage(ImageConstatnts.pinterest_welcome),
//                         fit: BoxFit.cover)),
//               ),
//               Positioned(
//                 child: Stack(
//                   children: [
//                     Container(
//                       height: 1000,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: <Color>[
//                               ColorConstants.TransparentMain,
//                               ColorConstants.BlackMain,
//                               ColorConstants.BlackMain
//                             ]),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           top: 30, left: 40, right: 40, bottom: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             height: 300,
//                           ),
//                           CircleAvatar(
//                             radius: 50,
//                             backgroundImage:
//                                 AssetImage(ImageConstatnts.pinterest_logo),
//                           ),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Text(
//                             'Welcome to Pinterset',
//                             style: TextStyle(
//                                 fontSize: 31,
//                                 fontWeight: FontWeight.w900,
//                                 color: ColorConstants.WhiteMain),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Form(
//                             key: emailkey,
//                             child: TextFormField(
//                               validator: (value) {
//                                 if (value != null &&
//                                     value.isNotEmpty &&
//                                     (value.contains('@') ||
//                                         value.contains('.in'))) {
//                                   return null;
//                                 } else {
//                                   return 'Enter a valid email';
//                                 }
//                               },
//                               controller: emailcontroller,
//                               style: TextStyle(
//                                   color: ColorConstants.WhiteMain,
//                                   fontSize: 20),
//                               decoration: InputDecoration(
//                                   focusedBorder: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(25),
//                                       borderSide: BorderSide(
//                                           width: 3,
//                                           color: ColorConstants.white_shade)),
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                         color: ColorConstants.White_shade_7,
//                                         width: 5,
//                                         style: BorderStyle.solid),
//                                     gapPadding: 8,
//                                     borderRadius: BorderRadius.circular(25),
//                                   ),
//                                   hintText: 'Email Address',
//                                   hintStyle: TextStyle(
//                                       color: ColorConstants.White_shade_8,
//                                       fontSize: 20)),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           InkWell(
//                             onTap: () {
//                               if (emailkey.currentState!.validate()) {
//                                 storegmail = emailcontroller.text;
//                                 Navigator.pushAndRemoveUntil(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => LoginPage(),
//                                   ),
//                                   (route) => false,
//                                 );
//                               } else {
//                                 print('Invalid mail id');
//                               }
//                             },
//                             onDoubleTap: () {
//                               if (emailkey.currentState!.validate()) {
//                                 storegmail = emailcontroller.text;
//                                 Navigator.pushAndRemoveUntil(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => LoginPage(),
//                                   ),
//                                   (route) => false,
//                                 );
//                               }
//                             },
//                             child: Container(
//                               padding: EdgeInsets.all(10),
//                               height: double.maxFinite,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(30),
//                                 color: ColorConstants.RedMain,
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   'Continue',
//                                   style: TextStyle(
//                                       color: ColorConstants.WhiteMain,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w900),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                             height: 60,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(60),
//                               color: ColorConstants.grey_shaded_1,
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(10),
//                               child: Row(
//                                 children: [
//                                   CircleAvatar(
//                                     radius: 20,
//                                     backgroundColor:
//                                         ColorConstants.grey_shaded_1,
//                                     backgroundImage: AssetImage(
//                                       ImageConstatnts.google_logo,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 30,
//                                   ),
//                                   Text(
//                                     'Continue with Google  ',
//                                     style: TextStyle(
//                                         color: ColorConstants.WhiteMain,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.w900),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "By continuing,you agree to Pinterest's  ",
//                                 style: TextStyle(
//                                   color: ColorConstants.WhiteMain,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               Text(
//                                 "Terms of  ",
//                                 style: TextStyle(
//                                   color: ColorConstants.Blue,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Service",
//                                 style: TextStyle(
//                                   color: ColorConstants.Blue,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               Text(
//                                 "and acknowledge that you've read our ",
//                                 style: TextStyle(
//                                   color: ColorConstants.WhiteMain,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               Text(
//                                 "Privacy",
//                                 style: TextStyle(
//                                   color: ColorConstants.Blue,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Policy",
//                                 style: TextStyle(
//                                   color: ColorConstants.Blue,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               Text(
//                                 ".",
//                                 style: TextStyle(
//                                   color: ColorConstants.WhiteMain,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                               Text(
//                                 "Notice at collection",
//                                 style: TextStyle(
//                                   color: ColorConstants.Blue,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               Text(
//                                 ".",
//                                 style: TextStyle(
//                                   color: ColorConstants.WhiteMain,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
