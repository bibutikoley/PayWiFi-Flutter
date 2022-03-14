import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_wifi/screens/auth/login_screen.dart';

import '../../store/app_store.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({Key? key}) : super(key: key);

  final AppStore _appStore = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay Wi-Fi"),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(_appStore.accessToken),
          ElevatedButton(
            onPressed: () {
              _appStore.clear().whenComplete(
                    () => {
                      Get.offAll(() => LoginPage()),
                    },
                  );
            },
            child: const Text("Logout"),
          ),
        ],
      )),
    );
  }
}
