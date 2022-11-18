import 'package:flutter/material.dart';

class Onboardpageone extends StatefulWidget {
  const Onboardpageone({super.key});

  @override
  State<Onboardpageone> createState() => _OnboardpageoneState();
}

class _OnboardpageoneState extends State<Onboardpageone> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    double deviceWidth(BuildContext context) =>
        MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(24, 74, 24, 100),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  // margin: const EdgeInsets.fromLTRB(deviceWidth(context) - 36, 104, 51, 393),
                  child: Image.asset(
                    'images/pana.png',
                    width: 302,
                    height: 296,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Title 001",
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      height: 1,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Connect with your Doctor over chat for your health issues.",
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.normal,
                      fontSize: 22.0,
                      height: 1,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 54, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/Frame 11.png',
                        width: 24,
                        height: 8,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Image.asset(
                          'images/Frame 12.png',
                          width: 8,
                          height: 8,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Image.asset(
                          'images/Frame 12.png',
                          width: 8,
                          height: 8,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            const Text(
                              "Title 001",
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.normal,
                                fontSize: 16.0,
                                height: 1,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
