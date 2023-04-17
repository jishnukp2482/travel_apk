import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_apk_ui/screens/TravelSplash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      home: const TravelSplash(),
    );
  }
}
