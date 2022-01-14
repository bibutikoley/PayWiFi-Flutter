import 'package:flutter/material.dart';
import 'package:pay_wifi/theme.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Color buttonStrokeColor;
  final String textValue;
  final Color textColor;

  const CustomOutlinedButton(
      {Key? key,
      required this.buttonStrokeColor,
      required this.textValue,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(14.0),
      elevation: 0,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: const Color(0xfffbfbfb),
            borderRadius: BorderRadius.circular(14.0),
            border: Border.all(color: buttonStrokeColor, width: 1)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(14.0),
            child: Center(
              child: Text(
                textValue,
                style: heading5.copyWith(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
