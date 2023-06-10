import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home2_controller.dart';

class HomeView2 extends StatelessWidget {
  const HomeView2({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController2>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('Home2'),
        ),
        body: Center(
            child: Column(
            children: [
            ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: Obx(() => Text(controller.number.toString()))),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child:  const Text("Get back"))
          ],
        )),
      ),
    );
  }
}
