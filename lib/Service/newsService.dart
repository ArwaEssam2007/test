import 'package:dio/dio.dart';
import 'package:newsappflutter/Models/newsModels.dart';
class ApiService {
  static var dio = Dio();
  static Future<List<NewsModel>> getAll() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=6d53c45618a749ecb775acd592d979eb');
    return NewsModel.fetchData(response.data);
  }
}