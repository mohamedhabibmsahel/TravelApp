import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingController extends GetxController {
  RxInt currentPage = 0.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  Future<void> navigateToLogin() async {
    await setBool("firstTime", true);
    Get.toNamed("LoginView"); // Replace "page" with the desired route name
  }
  Future<void> setBool(String key,bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }
}
