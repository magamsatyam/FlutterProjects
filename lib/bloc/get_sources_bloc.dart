import 'package:flutter_news_app/model/news_response.dart';
import 'package:flutter_news_app/repository/repository.dart';
import 'package:rxdart/rxdart.dart';


class GetSourcesBloc {
  final NewsRepository _repository = NewsRepository();
  final BehaviorSubject<NewsResponse> _subject =
  BehaviorSubject<NewsResponse>();

  getSources() async {
    NewsResponse response = await _repository.getSources();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<NewsResponse> get subject => _subject;

}
final getSourcesBloc = GetSourcesBloc();