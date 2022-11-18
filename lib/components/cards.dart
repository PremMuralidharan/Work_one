 import 'package:flutter/material.dart';
 
   List<Widget> cards = [];
     Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Container(
                    width: 343,
                    height: 258,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset(
                              'images/Ellipse30.png',
                              // width: 302,
                              // height: 296,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Dr. Charollette Baker",
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.0,
                                    height: 1,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                Text(
                                  "Gestational Diabetes",
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15.0,
                                    height: 1,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 12),
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
                        Divider(
                            color: Color.fromRGBO(210, 210, 210, 1),
                            thickness: 0.5),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Anna Nagar"),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/chat.png',
                                // width: 59,
                                // height: 24,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                margin: const EdgeInsets.all(10.0),
                                width: 210,
                                height: 35,
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
                                  child: const Text(
                                    'Book a Appointment',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17.0,
                                      // height: 1,
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