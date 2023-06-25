import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_travel_app/controllers/on_boarding_controller.dart';

import 'widget/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: Get.find<OnBoardingController>().onPageChanged,
              children: const [
                OnboardingPage(
                  image: 'assets/images/1.png',
                  text: "Tripixie",
                  color: Color.fromRGBO(36, 0, 255, 0.7),
                ),
                OnboardingPage(
                  image: 'assets/images/2.png',
                  text: "Tripixie",
                  color: Color.fromRGBO(0, 170, 78, 0.7),
                ),
                OnboardingPage(
                  image: 'assets/images/3.png',
                  text: "Tripixie",
                  color: Color.fromRGBO(201, 169, 0, 0.7),
                ),
                OnboardingPage(
                  image: 'assets/images/3.png',
                  color: Color.fromRGBO(217, 217, 217, 1),
                  text: "Video",
                ),
              ],
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Obx(
                        () => DotsIndicator(
                      dotsCount: 4,
                      position: Get.find<OnBoardingController>()
                          .currentPage
                          .value
                          .toDouble(),
                      decorator: const DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 0, 80, 80),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Dis volutpat.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text(
                    'TRAVEL APP',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () async{
                await controller.navigateToLogin();
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Start now",
                        style: TextStyle(
                          color: Colors.white, // Set the text color to white
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: const Icon(
                          Icons.arrow_upward,
                          color: Colors.black, // Set the icon color to white
                        ),
                      ),
                    ],
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
