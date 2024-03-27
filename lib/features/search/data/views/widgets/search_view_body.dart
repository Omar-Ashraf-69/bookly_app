import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/search/data/views/widgets/custom_text_search_field.dart';
import 'package:bookly/features/search/data/views/widgets/search_results_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          CustomSearchTextField(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Best Results',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SearchResultsListView(),
          ),
        ],
      ),
    );
  }
}
