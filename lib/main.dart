import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_wifi/screens/auth/splash_screen.dart';

import 'di/app_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pay WiFi',
      initialBinding: AppModule(),
      theme: ThemeData(
        platform: TargetPlatform.iOS,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
