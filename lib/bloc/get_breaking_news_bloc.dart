import 'package:flutter_news_app/model/news_article_response.dart';
import 'package:flutter_news_app/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class GetBreakingNewsBloc {
  final NewsRepository _repository = NewsRepository();
  final BehaviorSubject<NewsArticleResponse> _subject =
  BehaviorSubject<NewsArticleResponse>();

  GetBreakingNews() async {
    NewsArticleResponse response = await _repository.getBreakingNews();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<NewsArticleResponse> get subject => _subject;

}
final getBreakingNewsBloc = GetBreakingNewsBloc();