import 'package:flutter/material.dart';
import 'package:my_app/screens/Login/LoginScreenOne.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:my_app/responsive.dart';
class LoginScreenTwo extends StatefulWidget {
  const LoginScreenTwo({super.key});

  @override
  State<LoginScreenTwo> createState() => _LoginScreenTwoState();
}

class _LoginScreenTwoState extends State<LoginScreenTwo> {
  OtpFieldController otpController = OtpFieldController();
  // String mobileno = "";
  TextEditingController mobileno = TextEditingController();
  final formKey = GlobalKey<FormState>();


  // bool? get validateMobile {
  //   String patttern = r'(^[0-9]*$)';
  //   RegExp regExp = new RegExp(patttern);
  //   if (value.isEmpty) {
  //     return false;
  //   } else if(value.length != 10){
  //     return false;
  //   }else if (!regExp.hasMatch(value)) {
  //     return false;
  //   }
  //   return true;
  // }

  String? formValidator(String? value) {
    if (value!.isEmpty) return 'Field is Required';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: PhoneVerification(context),
        desktop: PhoneVerification(context),
        tablet: PhoneVerification(context),
      ),
    );
  }

  SafeArea PhoneVerification(BuildContext context) {
    return SafeArea(
        child: Column(
            // left: 24.0,
            // top: 114.0,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  key: formKey,
                  children: [
                    const Text(
                      "Enter your phone number for verification",
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        height: 1,
                        color: Color.fromRGBO(0, 18, 19, 1),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 30.0),
                      // width: 340,
                      // height: 54,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.1,
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: mobileno,
                        validator: formValidator,
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: "Enter your phone number",
                          prefixIcon: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 6),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 6),
                                  child: const Text(
                                    "+91",
                                    style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 24,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 24,
                            letterSpacing: 0.15000000596046448,
                            fontWeight: FontWeight.normal,
                            height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
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
                child:
                TextButton(
                  onPressed: () {
                    // if(formKey.currentState!.validate()){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginScreenOne(),
                      ));
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
            ]),
      );
  }
}
