import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pay_wifi/state_managers/auth_page_state_manager.dart';

class AppModule extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthPageStateManager());
  }
}

final GetStorage getxBox = GetStorage();
