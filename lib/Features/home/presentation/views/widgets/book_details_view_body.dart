import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 31),
            child: Column(
              children: [
                BookDetailsSection(),
                SizedBox(height: 38),
                BookAction(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimilarBookSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
