import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_wifi/state_managers/login_page_state_manager.dart';

import '../theme.dart';

class LoginPageCheckBox extends StatelessWidget {
  final LoginPageStateManager _loginPageStateManager = Get.find();

  LoginPageCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _loginPageStateManager.isRememberMeChecked.value =
            _loginPageStateManager.isRememberMeChecked.toggle().value;
      },
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: _loginPageStateManager.isRememberMeChecked.value
                ? primaryBlue
                : Colors.transparent,
            borderRadius: BorderRadius.circular(4.0),
            border: _loginPageStateManager.isRememberMeChecked.value
                ? null
                : Border.all(
                    color: textGrey,
                    width: 1.5,
                  ),
          ),
          width: 20,
          height: 20,
          child: _loginPageStateManager.isRememberMeChecked.value
              ? const Icon(
                  Icons.check,
                  size: 20,
                  color: Colors.white,
                )
              : null,
        ),
      ),
    );
  }
}
