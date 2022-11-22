import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewEditProfile extends StatefulWidget {
  const ViewEditProfile({super.key});

  @override
  State<ViewEditProfile> createState() => _ViewEditProfileState();
}

class _ViewEditProfileState extends State<ViewEditProfile> {
  int _selectedIndex = 0;
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                  'Edit profile',
                  style: TextStyle(
                    fontFamily: 'Open sans',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.start,
                ), // Your desired title
              ),
              Container(
                child: Column(
                  children: [
                    Image(image: AssetImage("images/Sudha.png")),
                    Text(  
                      'Edit profile',  
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                      ),  
                    )  
                  ]
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Text(  
                        'Sudha Ragunathan',  
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w700,
                        ),  
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Container(
                child: Expanded(
                  child : 
                    ListView(
                      children: [
                        Card(
                          child: ListTile(
                            leading: Image.asset(
                              'images/personalinfo.png',
                              // width: 64.w,
                              // height: 64.h,
                              fit: BoxFit.cover,
                            ),
                            title: Text('Personal information'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Image.asset(
                              'images/passwrd.png',
                              // width: 64.w,
                              // height: 64.h,
                              fit: BoxFit.cover,
                            ),
                            title: Text('Change password'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Image.asset(
                              'images/logindevices.png',
                              // width: 64.w,
                              // height: 64.h,
                              fit: BoxFit.cover,
                            ),
                            title: Text('Login devices'),
                          ),
                        ),
                      ],
                    ),
                  ),
              )
            ],
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
      ),
    );
  }
}