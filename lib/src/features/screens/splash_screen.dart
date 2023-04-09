import 'dart:async';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:outdrive/src/constants/image_strings.dart';
import 'package:outdrive/src/features/screens/otpscreen.dart';
import 'package:outdrive/src/features/screens/on_boarding_screen.dart';
import 'package:outdrive/src/features/screens/welcome.dart';

import '../../constants/colors.dart';
import 'enter_phoneNo.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        setStateTimer: const Duration(milliseconds: 1000),
        backgroundColor: bgColor,
        childWidget: SizedBox(
          height: 300,
          width: 300,
          child: Image.asset(logo),
        ),
        defaultNextScreen: PhoneNumberScreen(),
      ),
    );
  }
}


// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   bool animate = false;
//   @override
//   void initState() {
//     startAnimation();
//     // super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: bgColor,
//       body: Stack(children: [
//         AnimatedPositioned(
//             duration: const Duration(milliseconds: 900),
//             top: 30,
//             right: animate ? 65 : -200,
//             child: AnimatedOpacity(
//               child: Image(image: AssetImage(logo), height: 300, width: 300,),
//               duration: const Duration(milliseconds: 800),
//               opacity: animate ? 1 : 0,
//             )),
//       ]),
//     );
//   }
//
//   Future startAnimation() async {
//     await Future.delayed(const Duration(milliseconds: 200));
//     setState(() => animate = true);
//     await Future.delayed(const Duration(milliseconds: 2000));
//     Navigator.pushReplacementNamed(context, '/on_board');
//   }
// }
