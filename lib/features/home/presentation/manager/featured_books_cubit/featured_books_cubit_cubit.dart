import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_cubit_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubit(this.homeRepo) : super(const FeaturedBooksCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksCubitLoading());
    var result = await homeRepo.fetchFeauturedBooks();

    result.fold(
      (failure) {
        emit(FeaturedBooksCubitError(error: failure.error));
      },
      (books) {
        emit(FeaturedBooksCubitSuccess(books: books));
      },
    );
  }
}
