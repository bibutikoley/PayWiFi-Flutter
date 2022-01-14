import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_wifi/state_managers/auth_page_state_manager.dart';

import '../theme.dart';

class AuthPageCheckBox extends StatelessWidget {
  final AuthPageStateManager _authPageStateManager = Get.find();

  AuthPageCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _authPageStateManager.isRememberMeChecked.value =
            _authPageStateManager.isRememberMeChecked.toggle().value;
      },
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: _authPageStateManager.isRememberMeChecked.value
                ? primaryBlue
                : Colors.transparent,
            borderRadius: BorderRadius.circular(4.0),
            border: _authPageStateManager.isRememberMeChecked.value
                ? null
                : Border.all(
                    color: textGrey,
                    width: 1.5,
                  ),
          ),
          width: 20,
          height: 20,
          child: _authPageStateManager.isRememberMeChecked.value
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
