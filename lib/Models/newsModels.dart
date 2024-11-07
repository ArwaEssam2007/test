class NewsModel {
  String publishedAt;
  String title;
  String url;
  NewsModel({
    required this.publishedAt,
    required this.title,
    required this.url,
  });

  static List<NewsModel> fetchData(dynamic json) {
    return (json['articles']).map((news) {
      return NewsModel(
        publishedAt: news['publishedAt'],
        title: news['title'],
        url: news['url'],
      );
    }).toList();
  }
}
