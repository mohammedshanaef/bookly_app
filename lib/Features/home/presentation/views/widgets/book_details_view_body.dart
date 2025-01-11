import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: Column(
              children: [
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const SizedBox(height: 38),
                const BookAction(),
                const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                const SimilarBookSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
