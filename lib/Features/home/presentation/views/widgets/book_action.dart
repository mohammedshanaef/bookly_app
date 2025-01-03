import 'package:bookly_app/core/utils/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            backgroundcolor: Colors.white,
            text: '19.99€',
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            backgroundcolor: Color(0xFFEF8262),
            text: 'Free Priview',
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
