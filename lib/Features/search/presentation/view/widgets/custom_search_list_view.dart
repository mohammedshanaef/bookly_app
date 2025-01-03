import 'package:bookly_app/Features/search/presentation/view/widgets/search_view_body.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search Here',
        suffixIcon: const Opacity(
          opacity: 0.8,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
          ),
        ),
        hintStyle: Styles.textStyle16,
        enabledBorder: builtInputBorder(),
        focusedBorder: builtInputBorder(),
      ),
    );
  }
}
