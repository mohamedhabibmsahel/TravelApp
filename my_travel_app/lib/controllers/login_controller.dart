import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  static LoginController get find => Get.find<LoginController>();
  RxBool isPasswordVisible = false.obs;
  String password = "";

  void showPassword(){
    isPasswordVisible.value = !isPasswordVisible.value;
  }



  Future<void> setBool(String key,bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }
}