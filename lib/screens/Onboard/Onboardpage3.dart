import 'package:flutter/material.dart';
import 'package:my_app/models/SliderModel.dart';
import 'package:my_app/screens/Login/LoginScreenOne.dart';
import 'package:my_app/screens/Login/LoginScreenTwo.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  List<SliderModel> slides = [];
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
    slides = getSlides();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // Column created
      body: SafeArea(
      child: Container(
        margin: EdgeInsets.fromLTRB(24, 0, 24, 100),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [   
              Expanded(
                // PageView Builder
                child: PageView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: slides.length,
                  itemBuilder: (context, index) {
                    // Contents of Slider that we
                    // created in Modal Class
                    return Slider(
                      image: slides[index].getImage(),
                      title: "Connect with your Doctor over chat for your health issues.",
                    );
                  },
                ),
              ),

              // Container(
              //   // margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              //   alignment: Alignment.centerLeft,
              //   child: const Text(
              //     "Title 001",
              //     style: TextStyle(
              //       fontFamily: 'Open Sans',
              //       fontWeight: FontWeight.bold,
              //       fontSize: 30.0,
              //       height: 1,
              //       color: Color.fromARGB(255, 0, 0, 0),
              //     ),
              //   ),
              // ),

              // Container(
              //   // margin: const EdgeInsets.fromLTRB(0, 16, 10, 0),
              //   alignment: Alignment.centerLeft,
              //   child: const Text(
              //     "Connect with your Doctor over chat for your health issues.",
              //     style: TextStyle(
              //       fontFamily: 'Open Sans',
              //       fontWeight: FontWeight.normal,
              //       fontSize: 22.0,
              //       height: 1,
              //       color: Color.fromARGB(255, 0, 0, 0),
              //     ),
              //   ),
              // ),

              // Container created for dots
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    3,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
              Container(
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    currentIndex < slides.length - 1 ? 
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginScreenTwo(),
                        ));
                      },
                      child: 
                        const Text(
                          'Skip',
                          style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.normal,
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )
                        )
                    ) : const Text(''),
                    Container(
                      width: 163,
                      height: 43,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(830),
                          topRight: Radius.circular(830),
                          bottomLeft: Radius.circular(830),
                          bottomRight: Radius.circular(830),
                        ),
                        color: Color.fromRGBO(1, 92, 93, 1),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (_controller!.hasClients) {
                            if(currentIndex < slides.length -1){
                              _controller!.animateToPage(
                                currentIndex + 1,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            } else {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginScreenTwo(),
                              ));
                            }
                          }
                        },
                        child: 
                          currentIndex < slides.length - 1 ? 
                          const Text(
                            'Next',
                            style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.normal,
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                          )
                        ) : const Text(
                            'Proceed',
                            style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.normal,
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   height: 60,
              //   margin: EdgeInsets.all(40),
              //   width: double.infinity,
              //   color: Colors.green,
              //   // Button
              //   child: Container(
              //     margin: const EdgeInsets.all(10.0),
              //     width: 342,
              //     height: 48,
              //     onPressed: () {

              //     },
              //     decoration: const BoxDecoration(
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(100),
              //         topRight: Radius.circular(100),
              //         bottomLeft: Radius.circular(100),
              //         bottomRight: Radius.circular(100),
              //       ),
              //       color: Color.fromRGBO(1, 92, 93, 1),
              //     ),
              //     child: const Text(
              //       "Go Next",
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontFamily: 'Open Sans',
              //         fontWeight: FontWeight.normal,
              //         fontSize: 24.0,
              //         height: 2,
              //         color: Color.fromARGB(255, 255, 255, 255),
              //       ),
              //     ),
              //   ),
              // ),
            ]),
      ),
    ));
  }

  Container buildDot(int index, BuildContext context) {
// Another Container returned
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(1, 92, 93, 1),
      ),
    );
  }
}

class Slider extends StatelessWidget {
  String image,title;
  // description;

//Constructor created
  Slider({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(

      // column containing image
      // title and description
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(image)),
          SizedBox(height: 100),
          Container(
                // margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
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
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.left,
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 12),
          // Text(description),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}

// class SliderModel {
//   String image;
//   String title;
//   String description;

//   // Constructor for variables
//   SliderModel(
//       {required this.title, required this.description, required this.image});

//   void setImage(String getImage) {
//     image = getImage;
//   }

//   void setTitle(String getTitle) {
//     title = getTitle;
//   }

//   void setDescription(String getDescription) {
//     description = getDescription;
//   }

//   String getImage() {
//     return image;
//   }

//   String getTitle() {
//     return title;
//   }

//   String getDescription() {
//     return description;
//   }
// }

// // List created
// List<SliderModel?> getSlides() {
//   List<SliderModel?> slides = [];
//   SliderModel? sliderModel;

//   // Item 1
//   sliderModel?.setImage("images/OneGlance_Logo.png");
//   // sliderModel?.setTitle("Copper Articles");
//   // sliderModel?.setDescription("Interested in buying Copper Handicrafts");
//   slides.add(sliderModel);

//   // sliderModel = new SliderModel();

//   // Item 2
//   sliderModel?.setImage("images/pana.png");
//   // sliderModel?.setTitle("Copper Articles");
//   // sliderModel?.setDescription("Interested in buying Copper Handicrafts");
//   slides.add(sliderModel);

//   // sliderModel = new SliderModel();

//   // Item 3
//   sliderModel?.setImage("images/pana.png");
//   // sliderModel?.setTitle("Copper Articles");
//   // sliderModel?.setDescription("Interested in buying Copper Handicrafts");
//   slides.add(sliderModel);

//   // sliderModel = new SliderModel();
//   return slides;
// }
