import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_wifi/controllers/counter_controller.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);

  final CounterController cc = Get.find() ?? Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("${cc.count}")),
        leading: const Icon(Icons.arrow_back_ios_rounded),
      ),
      backgroundColor: Colors.white70,
      body: ElevatedButton(
        child: const Text("Click Me"),
        onPressed: () => {
          showDialog(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text("This is a test tile"),
                    content: Obx(
                      () => Text(
                          "You are currently viewing this ${cc.count} times"
                      ),
                    ),
                    actions: [
                      CupertinoDialogAction(
                        child: Text("Close".toUpperCase().toString()),
                        isDefaultAction: true,
                        onPressed: () => Get.back(),
                      )
                    ],
                  ))
        },
      ),
    );
  }
}
