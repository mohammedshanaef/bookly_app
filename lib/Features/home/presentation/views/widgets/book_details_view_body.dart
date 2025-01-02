import 'package:flutter/material.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 31),
      child: Column(
        children: [
          CustomBookDetailAppBar(),
        ],
      ),
    );
  }
}

class CustomBookDetailAppBar extends StatelessWidget {
  const CustomBookDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
