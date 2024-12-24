import 'package:bookly_app/Features/home/presentation/views/widgets/Featured_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Best Seller',
              style: Styles.MediumText,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SvgPicture.asset(
                  AssetData.harryPotterBook,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
