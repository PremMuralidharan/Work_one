import 'package:flutter/material.dart';
import 'package:my_app/screens/Login/LoginScreenOne.dart';
import 'package:my_app/screens/Login/LoginScreenTwo.dart';
import 'package:my_app/screens/Onboard/OnBoardpage.dart';
import 'package:my_app/screens/Onboard/Onboardpage2.dart';
import 'package:my_app/screens/Onboard/Onboardpage3.dart';
import 'package:my_app/screens/Onboard/smoothpage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Oneglance',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen1(),
      ),
      // designSize: Size(390, 1091),
    );
  }
}

