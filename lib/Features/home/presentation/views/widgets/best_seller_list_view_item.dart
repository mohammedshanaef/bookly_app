import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/helper.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class BestListViewItem extends StatelessWidget {
  const BestListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(AppRouter.kBookDetail, extra: bookModel);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: context.screenWidth * .5, // Width dynamically adjusts based on screen size
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis, // Adds "..." if text overflows two lines
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(
                        count: bookModel.volumeInfo.pageCount!,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
