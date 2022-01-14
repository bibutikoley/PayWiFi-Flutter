import 'dart:async';

import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) => count++);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
