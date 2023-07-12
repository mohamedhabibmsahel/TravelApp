import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  static LoginController get find => Get.find<LoginController>();
  var number = 0.obs;
  int index = 0;


  void increment(){
    number++;
  }

  Future<void> setBool(String key,bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }
}
