import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SeachListView extends StatelessWidget {
  const SeachListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return const BestSellerListViewItem();
          })),
    );
  }
}
