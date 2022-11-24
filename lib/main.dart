import 'package:flutter/material.dart';
import 'package:my_app/screens/Onboard/Onboardpage3.dart';
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
          primarySwatch: Colors.blue,
        ),
        home: Onboardpage(),
      ),
      // designSize: Size(390, 1091),
    );
  }
}

