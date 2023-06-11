import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_fonts/google_fonts.dart';
// class HomeView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<HomeController>(
//       builder: (controller) =>
//           Scaffold(
//             body: Center(
//               child: Column(
//                 children: [
//                   ElevatedButton(
//                       onPressed: () {
//                         controller.increment();
//                       },
//                       child: Obx(() => Text(controller.number.toString()))),
//                   ElevatedButton(
//                       onPressed: () {
//                         Get.toNamed("/homeView2");
//                       },
//                       child: const Text("Go to next page"))
//                 ],
//               ),
//             ),
//           ),
//     );
//   }

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      addButton: false,
      indicatorAbove: true,
          headerBackgroundColor: const Color.fromRGBO(36, 0, 255, 0.7),
          finishButtonText: 'Register',
          finishButtonStyle: const FinishButtonStyle(
            backgroundColor: Colors.black,
          ),
          // skipTextButton: Text('Skip'),
          // trailing: Text('Login'),
          background: [
            ColorFiltered(colorFilter: const ColorFilter.mode(Color.fromRGBO(36, 0, 255, 0.7), BlendMode.darken),
            child: Image.asset('assets/1.png',fit: BoxFit.fitWidth,)
            ),
            ColorFiltered(colorFilter: const ColorFilter.mode(Color.fromRGBO(0, 170, 78, 0.7), BlendMode.darken),
                child: Image.asset('assets/2.png',fit: BoxFit.fitWidth,)),
            ColorFiltered(colorFilter: const ColorFilter.mode(Color.fromRGBO(201, 169, 0, 0.7), BlendMode.darken),
                child: Image.asset('assets/3.png',fit: BoxFit.fitWidth,)),
          ],
          totalPage: 3,
          speed: 1.8,
          pageBodies: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                  child: Text('Tripixie', style: GoogleFonts.poppins(fontSize: 64,fontWeight: FontWeight.w700,color: Colors.white),
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                  child: Text('Tripixie', style: GoogleFonts.poppins(fontSize: 64,fontWeight: FontWeight.w700,color: Colors.white),
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                  child: Text('Tripixie', style: GoogleFonts.poppins(fontSize: 64,fontWeight: FontWeight.w700,color: Colors.white),
                  )
              ),
            ),
          ],
    );
  }
}
