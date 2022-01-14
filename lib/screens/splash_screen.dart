import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_wifi/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => {_navigateToNextScreen()});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () => _navigateToNextScreen(),
            child: Image.network(
                "https://pub.dev/static/img/pub-dev-logo-2x.png?hash=umitaheu8hl7gd3mineshk2koqfngugi"),
          ),
        ),
      ),
    );
  }

  _navigateToNextScreen() {
    Get.off(() => LoginPage());
  }
}
