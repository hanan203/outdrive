import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:outdrive/src/constants/image_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

final controller = LiquidController();
int currentpage = 0;

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            liquidController: controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            onPageChangeCallback: onPageChangedCallback,
            waveType: WaveType.circularReveal,
            positionSlideIcon: 0.82,
            ignoreUserGestureWhileAnimating: false,
            pages: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: tOnBoradingPage1Color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Choose Ride',
                            style: font_bold_white_heading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'You can now order rides anytime\nright from your mobile',
                            style: font_bold_white_lines,
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage(on_boarding_image1),
                      width: size.width * 2,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        '1/3',
                        style: font_bold_white_lines,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ), //Page 1
              Container(
                height: double.infinity,
                width: double.infinity,
                color: tOnBoradingPage2Color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Select Location',
                            style: font_bold_white_heading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Set up preffered pickup location and\nmark mulitple destinations point',
                            style: font_bold_white_lines,
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage(on_boarding_image2),
                      width: size.width * 2,
                      alignment: AlignmentDirectional.topEnd,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        '2/3',
                        style: font_bold_white_lines,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ), //Page 2
              Container(
                height: double.infinity,
                width: double.infinity,
                color: tOnBoradingPage3Color,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Choose Model',
                            style: font_bold_white_heading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Choose between regular car models\nor exclusive ones',
                            style: font_bold_white_lines,
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage(on_boarding_image3),
                      width: size.width * 2,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        '3/3',
                        style: font_bold_white_lines,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),

                  ],
                ),
              ), //Page 3
            ],
          ),
          Positioned(
              bottom: 80.0,
              left: 180,
              child: OutlinedButton(
                onPressed: () {
                  int nextPage = controller.currentPage + 1;
                  controller.animateToPage(page: nextPage);
                },
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    onPrimary: bgColor),
                child: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                      color: tSecondaryColor, shape: BoxShape.circle),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              )),
          Positioned(
            top: 50.0,
            right: 20,
            child: TextButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/welcome'),
              child: const Text(
                'Skip',
                style: font_medium_black,
              ),
            ),
          ), //Skip button
          Positioned(
            bottom: 60.0,
            left: 170,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: tSecondaryColor,
                radius: 10,
                dotHeight: 5,
                dotWidth: 15,
              ),
            ),
          ), //Swipe button
        ],
      ),
    );
  }

  onPageChangedCallback(int activePageIndex) {
    setState(() {
      currentpage = activePageIndex;
    });
  }
}
