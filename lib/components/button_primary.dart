import 'package:flutter/material.dart';

class PrimaryTextButton extends StatelessWidget {
  final String buttonText;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonRadius;
  final Color buttonColor;
  final Color buttonTextColor;
  final double buttonTextSize;
  const PrimaryTextButton({
    super.key,
    required this.buttonText,
    this.buttonWidth = 130,
    this.buttonHeight = 100,
    this.buttonRadius = 25,
    this.buttonColor = Colors.grey,
    this.buttonTextColor = Colors.white,
    this.buttonTextSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            buttonRadius,
          ),
          color: buttonColor,
        ),
        alignment: Alignment.center,
        child: Text(
          buttonText /* 'Income\n${Utilities.getCurrency('5000')}'*/,
          style: TextStyle(
            color: buttonTextColor,
            fontWeight: FontWeight.bold,
            fontSize: buttonTextSize,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
