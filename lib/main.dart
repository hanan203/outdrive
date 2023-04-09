import 'package:flutter/material.dart';
import 'package:outdrive/src/features/screens/enter_phoneNo.dart';
import 'package:outdrive/src/features/screens/otpscreen.dart';
import 'package:outdrive/src/features/screens/main_screen.dart';
import 'package:outdrive/src/features/screens/otp_screen.dart';
import 'package:outdrive/src/features/screens/signup.dart';
import 'package:outdrive/src/features/screens/welcome.dart';
import 'package:outdrive/src/features/screens/on_boarding_screen.dart';
import 'package:outdrive/src/features/screens/splash_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/on_board': (context) => OnBoardingScreen(),
        '/welcome': (context) => Welcome(),
        '/otpscreen': (context) => OTPScreen('+923156624170'),
        '/signup': (context) => SignUp(),
        '/mainscreen': (context) => MainScreen(),
        '/phonenumberscreen': (context) => PhoneNumberScreen(),
        // other routes
      },
    );
  }
}
