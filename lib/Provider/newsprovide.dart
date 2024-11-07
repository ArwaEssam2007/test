import 'package:flutter/material.dart';
import 'package:newsappflutter/Models/newsModels.dart';
import 'package:newsappflutter/Service/newsService.dart';
class NewsProvider extends ChangeNotifier {
  List<NewsModel> news = [];
  Future<void> getAll() async {
    news = await ApiService.getAll();
    print(news);
    notifyListeners();
  }
}