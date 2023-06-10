import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  static HomeController get find => Get.find<HomeController>();
  var number = 0.obs;

  // init of the controller
  HomeController(){
    setBool("firstTime", true);
  }

  void increment(){
    number++;
  }

  Future<void> setBool(String key,bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }
}
