import 'package:flutter/cupertino.dart';
import 'package:flutter_news_app/model/news_article_response.dart';
import 'package:flutter_news_app/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class GetSourceNewsBloc {
  final NewsRepository _repository = NewsRepository();
  final BehaviorSubject<NewsArticleResponse> _subject =
  BehaviorSubject<NewsArticleResponse>();

  getSourceNews(String sourceId) async {
    NewsArticleResponse response = await _repository.getSourceNews(sourceId);
    _subject.sink.add(response);
  }

  void drainStream(){ _subject.value = null; }
  @mustCallSuper
  void dispose() async{
    await _subject.drain();
    _subject.close();
  }

  BehaviorSubject<NewsArticleResponse> get subject => _subject;

}
final getSourceNewsBloc = GetSourceNewsBloc();