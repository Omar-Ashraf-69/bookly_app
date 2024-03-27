import 'package:bookly/features/home/presentation/manager/best_seller_books_cubit/best_seller_books_cubit_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksCubitState>(
      builder: (context, state) {
        if (state is BestSellerBooksCubitSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) =>  Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: BestSellerListItem(
                book: state.books[index],
              ),
            ),
          );
        }
        else if(state is BestSellerBooksCubitError){
          return Center(child: Text(state.error));
        }
        else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
