import 'package:fitnesscenter/screens/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _MyOnBoardingState();
}

class _MyOnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  onScroll(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _images = [
      "fitnessstats.png",
      "midfull.png",
      "tracker.png",
      "private.png",
    ];
    final _imagestext = [
      "Your Personal Fitness Companion",
      "Mindull technics to train everyday",
      "Stay Motivated and See Results",
      "Stay Inspired and Engaged",
    ];

    _onboard(int index) => Column(
          children: [
            Image.asset(
              "assets/images/" + _images[index],
              width: 300,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Center(
                  child: Text(
                    _imagestext[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 189, 14, 2),
                        fontFamily: "Poppins"),
                  ),
                ),
              ),
            )
          ],
        );

    final _pageController = PageController();
    @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }

    final _pageIndicator = SmoothPageIndicator(
      onDotClicked: (index) => _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn),
      controller: _pageController,
      count: 4,
      axisDirection: Axis.horizontal,
      effect: const JumpingDotEffect(
          jumpScale: 2.0,
          verticalOffset: 5.0,
          strokeWidth: 1,
          dotColor: Colors.red,
          // type: WormType.thin,
          dotHeight: 8.0,
          dotWidth: 8.0,
          offset: 10,
          activeDotColor: Colors.red,
          paintStyle: PaintingStyle.stroke),
    );

    return Scaffold(
      body: PageView.builder(
        dragStartBehavior: DragStartBehavior.start,
        scrollBehavior: const ScrollBehavior(
          // ignore: deprecated_member_use
          androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
        ),
        controller: _pageController,
        itemCount: 4,
        onPageChanged: onScroll,
        itemBuilder: (context, index) {
          currentIndex = index;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _onboard(index),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        },
      ),
      bottomSheet: Container(
        // color: Colors.white,
        margin: const EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        height: 100,
        child: Column(
          children: [
            _pageIndicator,
            GestureDetector(
              onTap: () => Get.to(() => const Home()),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width - 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 201, 14, 0),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                height: 50,
                child: Center(
                  child: Text(
                    currentIndex == 3 ? "Next" : "Skip",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
