import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'furniture/Boarding.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}


