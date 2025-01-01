import 'package:bookly_app/core/utils/assets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            color: Colors.red,
            child: SvgPicture.asset(
              AssetData.jungleBook,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
