part of 'related_books_cubit.dart';

sealed class RelatedBooksState extends Equatable {
  const RelatedBooksState();

  @override
  List<Object> get props => [];
}

final class RelatedBooksInitial extends RelatedBooksState {
  const RelatedBooksInitial();
}


final class RelatedBooksLoading extends RelatedBooksInitial {}

final class RelatedBooksSuccess extends RelatedBooksInitial {
  final List<BookModel> books;

  const RelatedBooksSuccess({required this.books});

}

final class RelatedBooksError extends RelatedBooksInitial {
  final String error;

  const RelatedBooksError({required this.error});
}
