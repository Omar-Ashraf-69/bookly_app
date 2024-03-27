import 'dart:developer';

import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksCubitState>(
        builder: (context, state) {
      if (state is FeaturedBooksCubitSuccess) {
        log("success");
        return Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: CustomBookImage(),
              ),
            ),
          ),
        );
      } else if (state is FeaturedBooksCubitError) {
        return Center(child: Text(state.error));
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
