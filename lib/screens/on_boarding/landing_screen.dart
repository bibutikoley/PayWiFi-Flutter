import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_wifi/di/app_module.dart';
import 'package:pay_wifi/screens/auth/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay Wi-Fi"),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text("${getxBox.read('token')}"),
                ElevatedButton(
                  onPressed: () {
                    getxBox.erase().whenComplete(
                          () => {
                        Get.offAll(() => LoginPage()),
                      },
                    );
                  },
                  child: const Text("Logout"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
