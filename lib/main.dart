import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pawpal/presentation/splash_screen/splashscreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "First Application",
      theme: ThemeData(),
      debugShowCheckedModeBanner:false,
      home: Splashscreen(),
    );

  }
}
