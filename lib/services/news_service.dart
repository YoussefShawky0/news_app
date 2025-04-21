import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
class NewsService {
  final Dio dio = Dio();

  NewsService();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      String apiKey = dotenv.env['API_KEY'] ?? '';
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=$apiKey&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
