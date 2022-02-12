import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pay_wifi/state_managers/app_state_manager.dart';
import 'package:pay_wifi/state_managers/auth_page_state_manager.dart';

class AppModule extends Bindings {
  @override
  void dependencies() {
    // This keeps the controller alive throughout the app
    Get.put(AppStateManager());
    // This keeps the controller alive only till the Page/Screen is active
    Get.lazyPut(() => AuthPageStateManager(), fenix: true);
  }
}

final GetStorage getxBox = GetStorage();
