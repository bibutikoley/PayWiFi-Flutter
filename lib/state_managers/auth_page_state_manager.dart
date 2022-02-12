import 'package:get/get.dart';
import 'package:pay_wifi/state_managers/app_state_manager.dart';

class AuthPageStateManager extends AppStateManager {
  var isPasswordVisible = false.obs;
  var isRememberMeChecked = false.obs;

  var registerPasswordVisible = true.obs;
  var confirmRegisterPasswordVisible = false.obs;
}