import 'package:get/get.dart';

class AuthPageStateManager extends GetxController {
  var isPasswordVisible = false.obs;
  var isRememberMeChecked = false.obs;

  var registerPasswordVisible = true.obs;
  var confirmRegisterPasswordVisible = false.obs;
}