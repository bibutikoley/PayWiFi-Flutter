import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_wifi/screens/auth/login_screen.dart';
import 'package:pay_wifi/screens/on_boarding/landing_screen.dart';

import '../../store/app_store.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AppStore _appStore = Get.find();

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
            child: CachedNetworkImage(
              imageUrl:
                  "https://pub.dev/static/img/pub-dev-logo-2x.png?hash=umitaheu8hl7gd3mineshk2koqfngugi",
            ),
          ),
        ),
      ),
    );
  }

  _navigateToNextScreen() {
    Get.off(
      () => _appStore.isLoggedIn ? LandingScreen() : LoginPage(),
    );
  }
}
