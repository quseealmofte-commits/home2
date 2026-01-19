import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_screen.dart';
import 'lang.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslations(),
      locale: const Locale('ar', 'EG'),
      fallbackLocale: const Locale('en', 'US'),
      home: const SplashScreen(),
    );
  }
}
