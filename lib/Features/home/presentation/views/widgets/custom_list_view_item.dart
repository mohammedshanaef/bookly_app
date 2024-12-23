import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.28,
      child: AspectRatio(
        aspectRatio: 3 / 4,
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