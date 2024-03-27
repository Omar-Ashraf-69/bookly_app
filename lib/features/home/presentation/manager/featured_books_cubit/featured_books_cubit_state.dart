part of 'featured_books_cubit_cubit.dart';

sealed class FeaturedBooksCubitState extends Equatable {
  const FeaturedBooksCubitState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksCubitInitial extends FeaturedBooksCubitState {
  const FeaturedBooksCubitInitial();
}

final class FeaturedBooksCubitLoading extends FeaturedBooksCubitInitial {}

final class FeaturedBooksCubitSuccess extends FeaturedBooksCubitInitial {
  final List<BookModel> books;

  const FeaturedBooksCubitSuccess({required this.books});

}

final class FeaturedBooksCubitError extends FeaturedBooksCubitInitial {
  final String error;

  const FeaturedBooksCubitError({required this.error});
}
