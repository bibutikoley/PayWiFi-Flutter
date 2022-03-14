import 'package:get/get.dart';
import 'package:pay_wifi/services/network_client.dart';
import 'package:pay_wifi/state_managers/app_state_manager.dart';
import 'package:pay_wifi/state_managers/auth_page_state_manager.dart';

import '../store/app_store.dart';

class AppModule extends Bindings {
  @override
  void dependencies() {
    // This keeps the controller alive throughout the app
    Get.put(AppStateManager());
    // This keeps the controller alive only till the Page/Screen is active
    // fenix: true if we want to recreate the controller if we load the same page again
    Get.lazyPut(() => AuthPageStateManager(), fenix: true);
    Get.put(NetworkClient());
    Get.put(AppStore());
  }
}
