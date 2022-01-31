import 'package:flutter/material.dart';
import 'package:pay_wifi/di/app_module.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay Wi-Fi"),
      ),
      body: Center(
        child: Text("${getxBox.read('token')}"),
      ),
    );
  }
}
