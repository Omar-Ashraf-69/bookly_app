import 'package:dio/dio.dart';

class ApiService {
  //      'https://www.googleapis.com/books/v1/volumes?q=free-ebooks';

  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    Response response = await dio.get("$_baseUrl/$endpoint");
    return response.data;
  }
}
