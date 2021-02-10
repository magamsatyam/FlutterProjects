import 'article.dart';

class NewsArticleResponse{
  final List<ArticleModel> articles;
  final String error;

  NewsArticleResponse(this.articles, this.error);

  NewsArticleResponse.fromJson(Map<String, dynamic> json)
      : articles =
  (json["articles"] as List).map((i) => new ArticleModel.fromJson(i)).toList(),
        error = "";

  NewsArticleResponse.withError(String errorValue)
      : articles = List(),
        error = errorValue;
}