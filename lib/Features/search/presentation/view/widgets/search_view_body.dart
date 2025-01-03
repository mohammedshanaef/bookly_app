import 'package:bookly_app/Features/search/presentation/view/widgets/custom_search_list_view.dart';
import 'package:bookly_app/Features/search/presentation/view/widgets/search_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SeachListView()),
        ],
      ),
    );
  }
}

OutlineInputBorder builtInputBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.circular(12),
  );
}
