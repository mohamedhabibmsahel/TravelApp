import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'onboarding_page.dart';

class HomeView2 extends StatefulWidget {
  @override
  _HomeView2State createState() => _HomeView2State();
}

class _HomeView2State extends State<HomeView2> {
  final PageController _pageController = PageController();
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_onPageChanged);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged() {
    setState(() {
      _currentPage = _pageController.page!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index.toDouble();
              });
            },
            children: const [
              OnboardingPage(
                image: 'assets/1.png',
                text: "Tripixie",
                color: Color.fromRGBO(36, 0, 255, 0.7),
              ),
              OnboardingPage(
                image: 'assets/2.png',
                text: "Tripixie",
                color: Color.fromRGBO(0, 170, 78, 0.7),
              ),
              OnboardingPage(
                image: 'assets/3.png',
                text: "Tripixie",
                color: Color.fromRGBO(201, 169, 0, 0.7),
              ), OnboardingPage(
                image: 'assets/3.png',
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
                DotsIndicator(
                  dotsCount: 4,
                  position: _currentPage,
                  decorator: const DotsDecorator(
                    color: Colors.grey,
                    activeColor: Colors.blue,
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                  child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Dis volutpat.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                )
              ],
            ),
          ),
          // Center(
          //   child: Text(
          //     _currentPage < 4 ? 'Tripixie' : '',
          //     style: GoogleFonts.poppins(
          //       fontSize: 64,
          //       fontWeight: FontWeight.w700,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,40,0,0),
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
          ),
        ],
      ),
    );
  }
}
