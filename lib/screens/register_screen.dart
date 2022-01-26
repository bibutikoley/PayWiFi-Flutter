import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_wifi/custom_views/auth_page_check_box.dart';
import 'package:pay_wifi/custom_views/custom_primary_button.dart';
import 'package:pay_wifi/state_managers/auth_page_state_manager.dart';
import 'package:pay_wifi/theme.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final AuthPageStateManager _authPageStateManager = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: const SizedBox(
                              width: 148,
                              height: 4,
                            )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Register new\naccount',
                        style: heading2.copyWith(color: textBlack),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        'assets/images/accent.png',
                        width: 99,
                        height: 4,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Form(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Obx(
                            () => TextFormField(
                              obscureText: _authPageStateManager
                                  .registerPasswordVisible.isFalse,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: heading6.copyWith(color: textGrey),
                                suffixIcon: IconButton(
                                  color: textGrey,
                                  splashRadius: 1,
                                  icon: Icon(
                                    _authPageStateManager
                                            .registerPasswordVisible.isFalse
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                  onPressed: togglePasswordState,
                                ),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Obx(
                            () => TextFormField(
                              obscureText: _authPageStateManager
                                  .confirmRegisterPasswordVisible.isFalse,
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                hintStyle: heading6.copyWith(color: textGrey),
                                suffixIcon: IconButton(
                                  color: textGrey,
                                  splashRadius: 1,
                                  icon: Icon(
                                    _authPageStateManager
                                            .confirmRegisterPasswordVisible
                                            .isFalse
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                  onPressed: toggleConfirmPasswordState,
                                ),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AuthPageCheckBox(),
                      const SizedBox(
                        width: 12,
                      ),
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            text: 'By creating an account, you agree to our ',
                            style: regular16pt.copyWith(color: textGrey),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Terms & Conditions',
                                style: regular16pt.copyWith(color: primaryBlue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    //TODO:: Perform action here.
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  CustomPrimaryButton(
                    buttonColor: primaryBlue,
                    textValue: 'Register',
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: regular16pt.copyWith(color: textGrey),
                      ),
                      GestureDetector(
                        onTap: () {
                          //reset the button visibility to original state.
                          _authPageStateManager.registerPasswordVisible.value =
                              false;
                          _authPageStateManager
                              .confirmRegisterPasswordVisible.value = true;
                          Get.back();
                        },
                        child: Text(
                          'Login',
                          style: regular16pt.copyWith(color: primaryBlue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void togglePasswordState() {
    _authPageStateManager.registerPasswordVisible.value =
        _authPageStateManager.registerPasswordVisible.toggle().value;
  }

  void toggleConfirmPasswordState() {
    _authPageStateManager.confirmRegisterPasswordVisible.value =
        _authPageStateManager.confirmRegisterPasswordVisible.toggle().value;
  }
}
