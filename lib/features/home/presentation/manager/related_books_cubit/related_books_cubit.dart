import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'related_books_state.dart';

class RelatedBooksCubit extends Cubit<RelatedBooksState> {
  RelatedBooksCubit(this.homeRepo) : super(const RelatedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchRelatedBooks({required String category}) async {
    emit(RelatedBooksLoading());
    var result = await homeRepo.fetchRelatedBooks(
      category: category,
    );

    result.fold(
      (failure) {
        emit(RelatedBooksError(error: failure.error));
      },
      (books) {
        emit(RelatedBooksSuccess(books: books));
      },
    );
  }
}
