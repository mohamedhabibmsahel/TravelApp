import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
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
                Get.toNamed("/homeView2");
              },
              child: const Text("Go to next page"))
            ],
          ),
        ),
      ),
    );
  }


}
