import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impero_practical_task/constants/color_constants.dart';
import 'package:impero_practical_task/view/dashboard_screen.dart';
import 'package:impero_practical_task/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:  primaryColor),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
