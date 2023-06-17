import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_travel_app/views/CustomView.dart';
import 'package:my_travel_app/views/home2_view.dart';
import 'package:my_travel_app/controllers/home_controller.dart';
import 'package:my_travel_app/views/login_View.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controllers/home2_controller.dart';
import 'views/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? token = prefs.getBool("firstTime");


  runApp(GetMaterialApp(
    initialBinding: InitialBindings(),
    home: token != null && token ?   LoginView() :  HomeView(),
    getPages: [
      GetPage(name: '/homeView', page: () => HomeView(),binding: BindingsBuilder.put(() => HomeController()) ),
      GetPage(name: '/homeView2', page: () => const HomeView2(),binding: BindingsBuilder.put(() => HomeController2())),
      GetPage(name: '/LoginView', page: () =>  LoginView(),binding: BindingsBuilder.put(() => HomeController2())),
      GetPage(name: '/CustomView', page: () =>  CustomView(),binding: BindingsBuilder.put(() => HomeController2())),

    ],
  ));
}

class InitialBindings implements Bindings {
  @override
  void dependencies() async {
    Get.put<HomeController>(HomeController(), permanent: true);
    Get.put<HomeController2>(HomeController2(), permanent: true);
  }
}