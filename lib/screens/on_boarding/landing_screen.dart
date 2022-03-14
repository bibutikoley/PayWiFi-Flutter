import 'package:cached_network_image/cached_network_image.dart';
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
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: CachedNetworkImage(
              width: 120,
              height: 120,
              imageUrl: "https://images.unsplash.com/photo-1640622658353-c6cecbe91488?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=windows-JM5qCwvWgXw-unsplash.jpg",
              //imageUrl: "https://place-hold.it/300x300?text=Hello%20WiFi&fontsize=23",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(child: Text(
                    "${((downloadProgress.progress ?? 0.0) * 100).toInt()}"
                  )),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
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
