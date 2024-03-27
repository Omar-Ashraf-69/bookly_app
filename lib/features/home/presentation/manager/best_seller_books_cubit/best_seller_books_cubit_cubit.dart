import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_books_cubit_state.dart';

class BestSellerBooksCubitCubit extends Cubit<BestSellerBooksCubitState> {
  BestSellerBooksCubitCubit(this.homeRepo) : super(const BestSellerBooksCubitInitial());

  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerBooksCubitLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(BestSellerBooksCubitError(error:  failure.error));
    }, (books) {
      emit(BestSellerBooksCubitSuccess(books: books));
    });
  }
}
