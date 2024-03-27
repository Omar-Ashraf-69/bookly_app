import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async{

    //https://www.googleapis.com/books/v1/volumes?Sorting=newest&Filtering=free-ebooks&q=subject:cooking
    try {
  var data = await apiService.get(
      endpoint: 'volumes?Sorting=newest&Filtering=free-ebooks&q=subject:cooking');

  List<BookModel> books = [];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return right(books);

}  catch (e) {
  return left(ServerFailure());
}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeauturedBooks() {
    throw UnimplementedError();
  }
}
