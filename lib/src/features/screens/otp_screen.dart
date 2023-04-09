import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:outdrive/src/constants/colors.dart';

import '../../constants/sizes.dart';

class OTPscreen extends StatefulWidget {
  const OTPscreen({Key? key}) : super(key: key);

  @override
  State<OTPscreen> createState() => _OTPscreenState();
}

class _OTPscreenState extends State<OTPscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Verification Code', style: font_bold_white_heading,),
              SizedBox(height: 20,),
              Text('We texted you a code\nPlease enter it below', style: font_bold_white_lines,),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VerificationCode(
                        length: 6,
                        textStyle: TextStyle(fontSize: 24, color: tSecondaryColor,),
                        keyboardType: TextInputType.number,
                        onCompleted: (value){}, onEditing: (value){}),
                    SizedBox(height: 40,),
                    ElevatedButton(
                        onPressed: () => Navigator.pushReplacementNamed(
                            context, '/otpscreen'),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(10.0)),
                            backgroundColor: tSecondaryColor,
                            padding: const EdgeInsets.symmetric(
                                vertical: tButtonSize)),
                        child: const Text('Submit', style: TextStyle(color: Colors.black))),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
