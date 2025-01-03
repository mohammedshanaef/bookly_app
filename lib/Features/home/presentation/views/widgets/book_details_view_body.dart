import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detail_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/helper.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = context.screenWidth;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: Column(
              children: [
                const CustomBookDetailAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .19),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 43),
                Text(
                  'The Jungle Book',
                  style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 8),
                Text(
                  'Rudyard Kipling',
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 18),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: 38),
                const BookAction(),
                const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                const SimilarBooksListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
