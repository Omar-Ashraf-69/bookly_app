part of 'best_seller_books_cubit_cubit.dart';

sealed class BestSellerBooksCubitState extends Equatable {
  const BestSellerBooksCubitState();

  @override
  List<Object> get props => [];
}

final class BestSellerBooksCubitInitial extends BestSellerBooksCubitState {
  const BestSellerBooksCubitInitial();
}

final class BestSellerBooksCubitLoading extends BestSellerBooksCubitInitial {}

final class BestSellerBooksCubitSuccess extends BestSellerBooksCubitInitial {
  final List<BookModel> books;

  const BestSellerBooksCubitSuccess({required this.books});
}

final class BestSellerBooksCubitError extends BestSellerBooksCubitInitial {
  final String error;

  const BestSellerBooksCubitError({required this.error});
}
