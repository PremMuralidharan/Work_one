import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/screens/Landingpage/Notification_page.dart';
import 'package:my_app/components/modelbottom.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:my_app/screens/sidebar/ViewEditProfile_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  int currentIndex = 0;
  int counter = 0;
  String? appointment = "";
  DateTime date = DateTime(2022, 11, 16);
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;

  final List<String> doctors = [
    "Dr. Charollette Baker",
    "Dr. Chitra Arvind",
    "Dr. Chitra",
    "Dr. Arvind"
  ];
  final List<String> specialists = [
    "Gestational Diabetes",
    "Pediatrician",
    "Cardiologist",
    "Surgeon"
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> mywidgets = [];
    mywidgets.add(Card(
      color: Color.fromRGBO(1, 92, 93, 1),
      margin: EdgeInsets.fromLTRB(0, 16.h, 0, 16.h),
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Container(
        // width: 343.w,
        // height: 275.h,
        padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/Ellipse30.png',
                  // width: 64.w,
                  // height: 64.h,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      doctors[0],
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        height: 1,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      specialists[0],
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        height: 1,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            'images/star.png',
                            // width: 302,
                            // height: 296,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            children: [Text("Rating"), Text("7.4")],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                // const SizedBox(width: 8),
                Image.asset(
                  'images/patch-check.png',
                  // width: 302,
                  // height: 296,
                  fit: BoxFit.cover,
                ),
                // const SizedBox(width: 8),
              ],
            ),
            const Divider(
                color: Color.fromRGBO(210, 210, 210, 1), thickness: 0.5),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Anna Nagar"),
                      SizedBox(
                        width: 4.w,
                      ),
                      Image.asset("images/dot.png"),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text("Appollo Hospital")
                    ],
                  ),
                  Row(
                    children: [Text("Consultation fee starts from Rs.1000")],
                  )
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'images/chat.png',
                    width: 59.w,
                    height: 24.h,
                    // fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    // margin: const EdgeInsets.all(10.0),
                    // width: 236.w,
                    // height: 44.h,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      color: Color.fromRGBO(1, 92, 93, 1),
                    ),
                    child: TextButton(
                      onPressed: () {
                        print("hi");
                      },
                      child: Text(
                        'Cancel Appointment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.normal,
                          fontSize: 17.sp,
                          height: 1,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
    for (int x = 0; x < 4; x++) {
      mywidgets.add(
        Card(
          // color: Color.fromRGBO(1, 92, 93, 1),
          margin: EdgeInsets.symmetric(vertical: 8.h),
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Container(
            // width: 343.w,
            // height: 275.h,
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      'images/Ellipse30.png',
                      // width: 64.w,
                      // height: 64.h,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          doctors[x],
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp,
                            height: 1,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          specialists[x],
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            height: 1,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                'images/star.png',
                                // width: 302,
                                // height: 296,
                                fit: BoxFit.cover,
                              ),
                              Column(
                                children: [Text("Rating"), Text("7.4")],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(width: 8),
                    Image.asset(
                      'images/patch-check.png',
                      // width: 302,
                      // height: 296,
                      fit: BoxFit.cover,
                    ),
                    // const SizedBox(width: 8),
                  ],
                ),
                const Divider(
                    color: Color.fromRGBO(210, 210, 210, 1), thickness: 0.5),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Anna Nagar"),
                          SizedBox(
                            width: 4.w,
                          ),
                          Image.asset("images/dot.png"),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text("Appollo Hospital")
                        ],
                      ),
                      Row(
                        children: [
                          Text("Consultation fee starts from Rs.1000")
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  // padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'images/chat.png',
                        // width: 59.w,
                        // height: 24.h,
                        // fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        // margin: const EdgeInsets.all(10.0),
                        // width: 236.w,
                        // height: 44.h,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                          color: Color.fromRGBO(1, 92, 93, 1),
                        ),
                        child: TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (BuildContext context) {
                                  return StatefulBuilder(builder: (BuildContext context,StateSetter state) {
                                    return Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                          )),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          ListTile(
                                            leading: Material(
                                              color: Colors.transparent,
                                              child: InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Icon(Icons.arrow_back) // the arrow back icon
                                                ),
                                            ),
                                            title: Center(
                                              child: Text(
                                                'Book appointment',
                                                style: TextStyle(
                                                  fontFamily: 'Open sans',
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.start,
                                              ), // Your desired title
                                            )
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Select Option',
                                                style: TextStyle(
                                                  fontFamily: 'Open sans',
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),
                                              RadioListTile(
                                                title: const Text("Tele-Consultation"),
                                                value: "Tele-Consultation",
                                                activeColor:
                                                    const Color.fromRGBO(239, 97, 32, 1),
                                                groupValue: appointment,
                                                onChanged: (value) {
                                                  state(() {
                                                    appointment = value;
                                                  });
                                                },
                                              ),
                                              RadioListTile(
                                                title: const Text("Visit to clinic"),
                                                value: "Visit to clinic",
                                                activeColor:const Color.fromRGBO(239, 97, 32, 1),
                                                groupValue: appointment,
                                                onChanged: (value) {
                                                  state(() {
                                                    appointment = value;
                                                  });
                                                },
                                              ),
                                              RadioListTile(
                                                title: const Text(
                                                    "Video Consultation"),
                                                value: "Video Consultation",
                                                activeColor:
                                                    const Color.fromRGBO(239, 97, 32, 1),
                                                groupValue: appointment,
                                                onChanged: (value) {
                                                  state(() {
                                                    appointment = value;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(10.0),
                                            width: 342,
                                            height: 48,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(100),
                                                topRight: Radius.circular(100),
                                                bottomLeft:
                                                    Radius.circular(100),
                                                bottomRight:
                                                    Radius.circular(100),
                                              ),
                                              color:
                                                  Color.fromRGBO(1, 92, 93, 1),
                                            ),
                                            child: TextButton(
                                              onPressed: () {
                                                // showDatePicker(
                                                //         context: context,
                                                //         initialDate: date,
                                                //         firstDate: DateTime(1900),
                                                //         lastDate: DateTime(2100),
                                                //       );
                                                showModalBottomSheet(
                                                  context: context,
                                                  backgroundColor: Colors.transparent,
                                                  builder: (BuildContext context) {
                                                    return StatefulBuilder(
                                                        builder: (BuildContext context,StateSetter state) {
                                                          return Container(
                                                            decoration: const BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.only(
                                                                topLeft: Radius.circular(25),
                                                                topRight: Radius.circular(25),
                                                              )
                                                            ),
                                                            child:Column(
                                                              children: [
                                                                ListTile(
                                                                  leading: Material(
                                                                    color: Colors.transparent,
                                                                    child: InkWell(
                                                                      onTap: () {
                                                                        Navigator.of(context).pop();
                                                                      },
                                                                      child: const Icon(Icons.arrow_back) // the arrow back icon
                                                                    ),
                                                                  ),
                                                                  title: Center(
                                                                    child: Text(
                                                                      'Book appointment',
                                                                      style: TextStyle(
                                                                        fontFamily: 'Open sans',
                                                                        fontSize: 17.sp,
                                                                        fontWeight: FontWeight.w600,
                                                                      ),
                                                                      textAlign: TextAlign.start,
                                                                    ), // Your desired title
                                                                  )
                                                                ),
                                                                TableCalendar(
                                                                  firstDay:DateTime.utc(2010, 10, 16),
                                                                  lastDay: DateTime.utc(2030, 3, 14),
                                                                  rowHeight: 43,
                                                                  focusedDay: _focusedDay,
                                                                  calendarFormat: _calendarFormat,
                                                                  calendarStyle: const CalendarStyle(
                                                                    selectedDecoration: BoxDecoration(
                                                                      color: Color.fromRGBO(77, 141, 142, 1),
                                                                      shape: BoxShape.circle,
                                                                    ),
                                                                    todayDecoration: BoxDecoration(
                                                                      color: Color.fromRGBO(77, 141, 142, 1),
                                                                      shape: BoxShape.circle,
                                                                    ),
                                                                  ),
                                                                  selectedDayPredicate: (day) {
                                                                    return isSameDay(_selectedDay, day);
                                                                  },
                                                                  headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true, 
                                                                      titleTextStyle: TextStyle(
                                                                        color : Color.fromRGBO(77, 141, 142, 1),
                                                                        fontFamily: "Open Sans",
                                                                        fontWeight: FontWeight.w700,
                                                                        fontSize: 17.sp,
                                                                      )),
                                                                  onDaySelected: (selectedDay, focusedDay) {
                                                                    if (!isSameDay(_selectedDay, selectedDay)) {
                                                                      // Call `setState()` when updating the selected day
                                                                      state(() {
                                                                        _selectedDay = selectedDay;
                                                                        _focusedDay = focusedDay;
                                                                      });
                                                                    }
                                                                  },
                                                                  onFormatChanged: (format) {
                                                                    if (_calendarFormat != format) {
                                                                      // Call `setState()` when updating calendar format
                                                                      state(() {
                                                                        _calendarFormat = format;
                                                                      });
                                                                    }
                                                                  },
                                                                  onPageChanged: (focusedDay) {
                                                                    // No need to call `setState()` here
                                                                    _focusedDay = focusedDay;
                                                                  },
                                                                ),
                                                                Container(
                                                                  margin: const EdgeInsets.all(10.0),
                                                                  width: 342.w,
                                                                  height: 48.h,
                                                                  decoration: const BoxDecoration(
                                                                    borderRadius: BorderRadius.only(
                                                                      topLeft: Radius.circular(100),
                                                                      topRight: Radius.circular(100),
                                                                      bottomLeft: Radius.circular(100),
                                                                      bottomRight: Radius.circular(100),
                                                                    ),
                                                                    color: Color.fromRGBO(1, 92, 93, 1),
                                                                  ),
                                                                  child: TextButton(
                                                                    onPressed: () {
                                                                      showModalBottomSheet(
                                                                        context: context,
                                                                        builder: (context) {
                                                                          return Column(
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            children: <Widget>[
                                                                              ListTile(
                                                                                leading: Material(
                                                                                  color: Colors.transparent,
                                                                                  child: InkWell(
                                                                                      onTap: () {
                                                                                        Navigator.of(context).pop();
                                                                                      },
                                                                                      child: const Icon(Icons.arrow_back) // the arrow back icon
                                                                                    ),
                                                                                ),
                                                                                title: Center(
                                                                                  child: Text(
                                                                                    'Book appointment',
                                                                                    style: TextStyle(
                                                                                      fontFamily: 'Open sans',
                                                                                      fontSize: 17.sp,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                                    textAlign: TextAlign.start,
                                                                                  ), // Your desired title
                                                                                )
                                                                              ),
                                                                              Container(
                                                                                child: Column(
                                                                                  // mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Text("Selected Date",
                                                                                      style: TextStyle(
                                                                                        fontFamily: 'Open Sans',
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontSize: 17.sp,
                                                                                      ), 
                                                                                    ),
                                                                                    Container(
                                                                                      child: Column(
                                                                                        children: [
                                                                                          Row(
                                                                                            children: [
                                                                                              Container(
                                                                                                margin: const EdgeInsets.all(10.0),
                                                                                                width: 93.w,
                                                                                                height: 36.h,
                                                                                                decoration: const BoxDecoration(
                                                                                                  borderRadius: BorderRadius.only(
                                                                                                    topLeft: Radius.circular(100),
                                                                                                    topRight: Radius.circular(100),
                                                                                                    bottomLeft: Radius.circular(100),
                                                                                                    bottomRight: Radius.circular(100),
                                                                                                  ),
                                                                                                  color: Color.fromRGBO(1, 92, 93, 1),
                                                                                                ),
                                                                                                child:
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    // if(formKey.currentState!.validate()){
                                                                                                    // } 
                                                                                                  },
                                                                                                  child: const Text(
                                                                                                    '8:30 AM',
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: TextStyle(
                                                                                                      fontFamily: 'Open Sans',
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontSize: 24.0,
                                                                                                      // height: 1,
                                                                                                      color: Color.fromARGB(255, 255, 255, 255),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                margin: const EdgeInsets.all(10.0),
                                                                                                width: 93.w,
                                                                                                height: 36.h,
                                                                                                decoration: const BoxDecoration(
                                                                                                  borderRadius: BorderRadius.only(
                                                                                                    topLeft: Radius.circular(100),
                                                                                                    topRight: Radius.circular(100),
                                                                                                    bottomLeft: Radius.circular(100),
                                                                                                    bottomRight: Radius.circular(100),
                                                                                                  ),
                                                                                                  color: Color.fromRGBO(1, 92, 93, 1),
                                                                                                ),
                                                                                                child:
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    // if(formKey.currentState!.validate()){
                                                                                                    // } 
                                                                                                  },
                                                                                                  child: const Text(
                                                                                                    'Get OTP',
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: TextStyle(
                                                                                                      fontFamily: 'Open Sans',
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontSize: 24.0,
                                                                                                      // height: 1,
                                                                                                      color: Color.fromARGB(255, 255, 255, 255),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                margin: const EdgeInsets.all(10.0),
                                                                                                width: 93.w,
                                                                                                height: 36.h,
                                                                                                decoration: const BoxDecoration(
                                                                                                  borderRadius: BorderRadius.only(
                                                                                                    topLeft: Radius.circular(100),
                                                                                                    topRight: Radius.circular(100),
                                                                                                    bottomLeft: Radius.circular(100),
                                                                                                    bottomRight: Radius.circular(100),
                                                                                                  ),
                                                                                                  color: Color.fromRGBO(1, 92, 93, 1),
                                                                                                ),
                                                                                                child:
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    // if(formKey.currentState!.validate()){
                                                                                                    // } 
                                                                                                  },
                                                                                                  child: const Text(
                                                                                                    'Get OTP',
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: TextStyle(
                                                                                                      fontFamily: 'Open Sans',
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontSize: 24.0,
                                                                                                      // height: 1,
                                                                                                      color: Color.fromARGB(255, 255, 255, 255),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                          ),
                                                                                          Row(

                                                                                          ),
                                                                                          Row(

                                                                                          ),
                                                                                          Row(

                                                                                          ),
                                                                                          Row(

                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    )
                                                                                    
                                                                                  ],
                                                                                ),
                                                                              )

                                                                            ],
                                                                          );
                                                                        }
                                                                      );
                                                                    },
                                                                    child: const Text(
                                                                      "Next",
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle(
                                                                        fontFamily: 'Open Sans',
                                                                        fontWeight: FontWeight.normal,
                                                                        fontSize: 24.0,
                                                                        // height: 1,
                                                                        color: Color.fromARGB(255, 255, 255, 255),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            )
                                                          );
                                                    });
                                                  }
                                                );
                                                // if(formKey.currentState!.validate()){
                                                // Navigator.of(context).push(MaterialPageRoute(
                                                //   builder: (context) => const LoginScreenOne(),
                                                // ));
                                                // }
                                              },
                                              child: const Text(
                                                'Next',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 24.0,
                                                  // height: 1,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                                });
                          },
                          child: Text(
                            'Book a Appointment',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.normal,
                              fontSize: 17.sp,
                              height: 1,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Image.asset(
                    "images/Ellipse35.png",
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ],
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          // Using Stack to show Notification Badge
          Stack(
            children: <Widget>[
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
                  : Container()
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height : 190.h, 
              child : DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Container(
                      // height: 142,
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "images/sidebardp.png",
                            width: 80.w,
                            height: 80.h,
                          ),
                          Text("Sudha Ragunathan",
                              style: TextStyle(
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17.sp,
                                  color: Colors.black
                                )
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ViewEditProfile(),
                              ));
                            },
                            child: 
                              Text(
                                'View and edit profile',
                                style: TextStyle(
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(77, 141, 142, 1),
                                )
                              )
                          )
                        ],
                      )
                    ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => print("hello"),
                      icon: Image.asset('images/chatting.png')),
                  Text(
                    'Online consultation',
                    style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 45,
            // ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => print("hello"),
                      icon: Image.asset('images/appointment.png')),
                  Text(
                    'Book Appointment',
                    style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => print("hello"),
                      icon: Image.asset('images/health.png')),
                  Text(
                    'Health summary',
                    style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => print("hello"),
                      icon: Image.asset('images/emr.png')),
                  Text(
                    'EMR',
                    style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => print("hello"),
                      icon: Image.asset('images/wallet.png')),
                  Text(
                    'OneGlance wallet',
                    style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => print("hello"),
                      icon: Image.asset('images/report.png')),
                  Text(
                    'Collection report',
                    style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => print("hello"),
                      icon: Image.asset('images/settings.png')),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => print("hello"),
                      icon: Image.asset('images/logout.png')),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Container(
              decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 255, 255, 255),
                  border: Border(
                      top: BorderSide(
                color: Color.fromARGB(228, 0, 0, 0),
                width: 1.w,
              ))),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Communicate',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(77, 141, 142, 1),
                        fontFamily: 'Open Sans',
                        fontSize: 16.sp,
                        // letterSpacing: -0.3199999928474426,
                        fontWeight: FontWeight.normal,
                        height: 1.375.h),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => print("hello"),
                      icon: Image.asset('images/Share.png')),
                  Text(
                    'Share the app',
                    style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => print("hello"),
                      icon: Image.asset('images/star.png')),
                  Text(
                    'Rate the app',
                    style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            // Expanded(
            //     child: Align(
            //   // alignment: Alignment.bottomLeft,
            //   child: Container(
            //     height: 65,
            //     width: MediaQuery.of(context).size.width,
            //     // color: Colors.black,
            //     child: Column(
            //       children: [
            //         Text("Communicate")
            //     ]),
            //   ),
            // ))
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome! 👋',
                        style: TextStyle(
                          fontFamily: 'Open sans',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    Text('Sudha Ragunathan',
                        style: TextStyle(
                          fontFamily: 'Open sans',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
              ),
              Expanded(
                child: (ListView(children: mywidgets)),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/Outline.png"),
            ),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/chaticon.png"),
            ),
            label: 'Chats',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(1, 92, 93, 1),
        // fixedColor: Color.fromRGBO(1, 92, 93, 1),
        // selectedIconTheme: IconThemeData.color,
        onTap: _onItemTapped,
        // selectedLabelStyle:
        // indicatorColor: Colors.teal,
      ),
    );
  }
}
