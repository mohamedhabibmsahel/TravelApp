import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_travel_app/controllers/login_controller.dart';
import 'package:my_travel_app/controllers/verification_code_controller.dart';
import 'package:my_travel_app/views/login_View.dart';
import 'package:my_travel_app/views/on_boarding_screen.dart';
import 'package:my_travel_app/views/verificationCode_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controllers/on_boarding_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? token = prefs.getBool("firstTime");


  runApp(GetMaterialApp(
    initialBinding: InitialBindings(),
    home: token != null && token ?  OnBoardingScreen() :  OnBoardingScreen(),
    getPages: [
      GetPage(name: '/onBoardingScreen', page: () => OnBoardingScreen(),binding: BindingsBuilder.put(() => OnBoardingController()) ),
      GetPage(name: '/LoginView', page: () =>  const LoginView(),binding: BindingsBuilder.put(() => LoginController())),
      GetPage(name: '/VerificationCodeView', page: () =>  VerificationCodeView(),binding: BindingsBuilder.put(() => VerificationCodeController())),
    ],
  ));
}

class InitialBindings implements Bindings {
  @override
  void dependencies() async {
    Get.put<OnBoardingController>(OnBoardingController(), permanent: true);
    Get.put<LoginController>(LoginController(), permanent: true);
    Get.put<VerificationCodeController>(VerificationCodeController(), permanent: true);
  }
}