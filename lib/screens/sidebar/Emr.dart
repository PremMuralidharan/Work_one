import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/screens/Landingpage/Notification_page.dart';
import 'package:my_app/responsive.dart';

class Emr extends StatefulWidget {
  const Emr({super.key});

  @override
  State<Emr> createState() => _EmrState();
}

class _EmrState extends State<Emr> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          mobile: Emr(context),
          desktop: Emr(context),
          tablet: Emr(context),
        )
      ),
    );
  }

  Container Emr(BuildContext context) {
    return Container(
        child: Column(
          children: [
            ListTile(
              leading: Material(
                color: Colors.transparent,
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back) // the arrow back icon
                    ),
              ),
              title: Text(
                'EMR',
                style: TextStyle(
                  fontFamily: 'Open sans',
                  fontSize: 17 * MediaQuery.of(context).textScaleFactor,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.start,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.search_rounded),
                  Stack(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            counter = 0;
                          });
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Notificationpage(),
                          ));
                        }),
                        counter == 0
                        ? Positioned(
                            right: 15,
                            top: 15,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(239, 97, 32, 1),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 8,
                                minHeight: 8,
                              ),
                              // child: Text(
                              //   '',
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 8,
                              //   ),
                              //   textAlign: TextAlign.center,
                              // ),
                            ),
                          )
                          : Container(),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24.h,horizontal: 24.h),
              child: Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
                    leading: Image.asset(
                              'images/Sudha.png',
                              // width: 64.w,
                              // height: 64.h,
                              fit: BoxFit.cover,
                            ),
                    title: Text('Ms. Sudha Ragunathan'),
                    subtitle: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ID : $counter"),
                        Text("Age : 58"),
                      ],
                    ),
                    trailing: Icon(Icons.arrow_drop_down_sharp),
                  ),
                ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Diagnosis Summary",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16 * MediaQuery.of(context).textScaleFactor,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Open Sans",
                        ),
                      ),
                    ],
                  ),
              ),
            ),
          ]
        )
      );
  }
}