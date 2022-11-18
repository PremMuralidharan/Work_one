import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:my_app/screens/Landingpage/Landing_page.dart';

class LoginScreenOne extends StatefulWidget {
  const LoginScreenOne({super.key});

  @override
  State<LoginScreenOne> createState() => _LoginScreenOneState();
}

class _LoginScreenOneState extends State<LoginScreenOne> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
    
          // left: 24.0,
          // top: 114.0,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Container(
            //   margin: const EdgeInsets.all(10.0),
            //   child: const Text(
            //     "Enter the OTP sent to ******8618",
            //     style: TextStyle(
            //       fontFamily: 'Open Sans',
            //       fontWeight: FontWeight.w700,
            //       fontSize: 24.0,
            //       color: Color.fromARGB(204, 2, 2, 2),
            //     ),
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  const Text(
                    "Enter the OTP sent to ******8618",
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      height: 1,
                      color: Color.fromRGBO(0, 18, 19, 1),
                    ),
                  ),
                  OTPTextField(
                    controller: otpController,
                    length: 5,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 45,
                    fieldStyle: FieldStyle.underline,
                    outlineBorderRadius: 15,
                    style: TextStyle(fontSize: 17),
                    onChanged: (pin) {
                      print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    }
                  ),
                ],
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.all(10.0),
            //   child: OTPTextField(
            //     controller: otpController,
            //     length: 5,
            //     width: MediaQuery.of(context).size.width,
            //     textFieldAlignment: MainAxisAlignment.spaceAround,
            //     fieldWidth: 45,
            //     fieldStyle: FieldStyle.underline,
            //     outlineBorderRadius: 15,
            //     style: TextStyle(fontSize: 17),
            //     onChanged: (pin) {
            //       print("Changed: " + pin);
            //     },
            //     onCompleted: (pin) {
            //       print("Completed: " + pin);
            //     }),
            // ),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 342,
              height: 48,
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
                  // if(formKey.currentState!.validate()){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LandingPage(),
                    ));
                  // } 
                },
                child: const Text(
                  "Verify",
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
          ]
        ),
      ),
    );
  }
}