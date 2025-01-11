import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.backgroundcolor, required this.text, required this.textColor, this.borderRadius, this.onPressed});

  final Color backgroundcolor;
  final String text;
  final Color textColor;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundcolor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: Text(text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
          )),
    );
  }
}
