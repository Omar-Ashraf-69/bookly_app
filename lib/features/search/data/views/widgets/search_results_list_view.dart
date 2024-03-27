
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: BestSellerListItem(),
      ),
    );
  }
}
