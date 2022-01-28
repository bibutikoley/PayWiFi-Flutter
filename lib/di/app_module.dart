import 'package:get/get.dart';
import 'package:pay_wifi/state_managers/auth_page_state_manager.dart';

class AppModule extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthPageStateManager());
  }
}
