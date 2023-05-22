import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impero_practical_task/view/color_strip_screen.dart';
import 'package:impero_practical_task/view/dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practical Test'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(() => DashboardScreen());
            },
            child: const Text('Test 1'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.to(() => ColorStripScreen());
            },
            child: const Text('Test 2'),
          ),
        ],
      )),
    );
  }
}
