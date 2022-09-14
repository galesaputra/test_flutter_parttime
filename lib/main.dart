import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_parttime/screen/home/home_screen.dart';

import 'utils/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        backgroundColor: CColor.primaryColor,
      ),
      home: HomeScreen(),
    );
  }
}
