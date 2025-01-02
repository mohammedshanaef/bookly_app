import 'package:bookly_app/Features/home/presentation/views/widgets/Featured_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Best Seller',
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
