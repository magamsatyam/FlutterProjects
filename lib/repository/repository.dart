
import 'package:dio/dio.dart';
import 'package:flutter_news_app/model/news_article_response.dart';
import 'package:flutter_news_app/model/news_response.dart';
import 'package:flutter_news_app/res/strings/app_strings.dart'as urls;

class NewsRepository {


  final Dio _dio = Dio();

  Future<NewsResponse> getSources() async {
    var params = {
      "apiKey": urls.AppStrings.apiKey,
      "language" : "en",
      "country" : "us"};
    try {
      Response response = await _dio.get(urls.AppStrings.getSourcesUrl, queryParameters: params);
      return NewsResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return NewsResponse.withError("$error");
    }
  }
  Future<NewsArticleResponse> getTopHeadlines() async {
    var params = {
      "apiKey": urls.AppStrings.apiKey,
      "country" : "us"};
    try {
      Response response = await _dio.get(urls.AppStrings.getTopHeadlinesUrl, queryParameters: params);
      return NewsArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return NewsArticleResponse.withError("$error");
    }
  }
  Future<NewsArticleResponse> search(String value) async {
    var params = {
      "apiKey": urls.AppStrings.apiKey,
      "q" : value,
      "sortBy": "popularity"};
    try {
      Response response = await _dio.get(urls.AppStrings.everythingUrl, queryParameters: params);
      return NewsArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return NewsArticleResponse.withError("$error");
    }
  }
  Future<NewsArticleResponse> getHotNews() async {
    var params = {
      "apiKey": urls.AppStrings.apiKey,
      "q" : "apple",
      "sortBy": "popularity"};
    try {
      Response response = await _dio.get(urls.AppStrings.everythingUrl, queryParameters: params);
      return NewsArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return NewsArticleResponse.withError("$error");
    }
  }
  Future<NewsArticleResponse> getSourceNews(String sourceId) async {
    var params = {
      "apiKey": urls.AppStrings.apiKey,
      "sources" : sourceId};
    try {
      Response response = await _dio.get(urls.AppStrings.getTopHeadlinesUrl, queryParameters: params);
      return NewsArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return NewsArticleResponse.withError("$error");
    }
  }

}
