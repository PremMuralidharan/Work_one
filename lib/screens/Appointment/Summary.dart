import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/responsive.dart';
import '../../constants.dart';

class AppSummary extends StatefulWidget {
  const AppSummary({super.key});

  @override
  State<AppSummary> createState() => _AppSummaryState();
}

class _AppSummaryState extends State<AppSummary> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          mobile: Summary(context),
          tablet: Summary(context),
          desktop: Summary(context)
        ),
      ),
    );
  }

  Container Summary(BuildContext context) {
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
                'Appointment Summary',
                style: TextStyle(
                  fontFamily: 'Open sans',
                  fontSize: 17* MediaQuery.of(context).textScaleFactor,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ), // Your desired title
            ),
            Card(
              child: ListTile(
              leading: Image.asset(
                  'images/Ellipse30.png',
                  // width: 64.w,
                  // height: 64.h,
                  fit: BoxFit.cover,
                ),
                title: Text('Your appointment with Dr. Charollette  has been successfully made.',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 13* MediaQuery.of(context).textScaleFactor,
                  )
                ),
                subtitle: Text('Upcoming',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    fontSize: 12* MediaQuery.of(context).textScaleFactor,
                    color: Color.fromRGBO(239, 97, 32, 1)
                  )
                ),
                // trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
              leading: Image.asset(
                  'images/Ellipse30.png',
                  // width: 64.w,
                  // height: 64.h,
                  fit: BoxFit.cover,
                ),
                title: Text('Your appointment with Dr. Charollette  has been successfully made.',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 13* MediaQuery.of(context).textScaleFactor,
                  )
                ),
                subtitle: Text('last week',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 12* MediaQuery.of(context).textScaleFactor,
                    color: Color.fromRGBO(128, 128, 128, 1)
                  )
                ),
                // trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
              leading: Image.asset(
                  'images/Ellipse35.png',
                  // width: 64.w,
                  // height: 64.h,
                  fit: BoxFit.cover,
                ),
                title: Text('Your appointment with Dr. Charollette  has been successfully made.',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 13* MediaQuery.of(context).textScaleFactor,
                  )
                ),
                subtitle: Text('Upcoming',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 11* MediaQuery.of(context).textScaleFactor,
                    color: Color.fromRGBO(128, 128, 128, 1)
                  )
                ),
                // trailing: Icon(Icons.more_vert),
              ),
            )
          ],
        ),
      );
  }
}
