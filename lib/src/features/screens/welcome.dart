import 'package:flutter/material.dart';
import 'package:outdrive/src/constants/colors.dart';
import 'package:outdrive/src/constants/image_strings.dart';
import 'package:outdrive/src/constants/sizes.dart';
import 'package:outdrive/src/features/screens/otpscreen.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(welcome),
              width: size.width * 0.9,
              height: size.height * 0.5,
            ),
            const Text(
              'Move with Safety',
              style: font_bold_white_heading,
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
                        style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            foregroundColor: tSecondaryColor,
                            side: const BorderSide(color: tSecondaryColor),
                            padding: const EdgeInsets.symmetric(
                                vertical: tButtonSize)),
                        child: Text('Login'.toUpperCase()))),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(),
                            foregroundColor: bgColor,
                            padding: const EdgeInsets.symmetric(
                                vertical: tButtonSize)),
                        child: Text('Signup'.toUpperCase()))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
