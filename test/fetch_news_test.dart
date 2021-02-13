import 'dart:convert';

import 'package:flutter_news_app/bloc/get_breaking_news_bloc.dart';
import 'package:flutter_news_app/bloc/news_event.dart';
import 'package:flutter_news_app/model/news_article_response.dart';
import 'package:flutter_news_app/model/news_response.dart';
import 'package:flutter_news_app/repository/repository.dart';
import 'package:flutter_news_app/res/strings/app_strings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

// Create a MockClient using the Mock class provided by the Mockito package.
// Create new instances of this class in each test.
class MockClient extends Mock implements http.Client {}


main() {
  // Tests go here
  group('get breaking news bloc', () {
    NewsRepository newsRepository;
    GetBreakingNewsBloc getBreakingNewsBloc;

    setUp(() {
      newsRepository = NewsRepository();
      getBreakingNewsBloc = GetBreakingNewsBloc();
    });

    test('throws AssertionError if WeatherRepository is null', () {
      expect(
            () => getBreakingNewsBloc,
        throwsA(isAssertionError),
      );
    });

    test('returns breaking news if the http call completes successfully', () async {
      final client = MockClient();

      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client.get(AppStrings.newsArticleUrl))
          .thenAnswer((_) async => http.Response('{"status": "ok"}', 200));
      expect(await newsRepository.getBreakingNews(), isA<NewsArticleResponse>());
    });

    test('returns source news if the http call completes successfully', () async {
      final client = MockClient();

      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client.get(AppStrings.newsArticleUrl))
          .thenAnswer((_) async => http.Response('{"status": "ok"}', 200));
      expect(await newsRepository.getSources(), isA<NewsResponse>());
    });

    test('returns top news headline if the http call completes successfully', () async {
      final client = MockClient();

      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client.get(AppStrings.newsArticleUrl))
          .thenAnswer((_) async => http.Response('{"status": "ok"}', 200));
      expect(await newsRepository.getTopHeadlines(), isA<NewsArticleResponse>());
    });

    test('returns top source news headline if the http call completes successfully', () async {
      final client = MockClient();

      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client.get(AppStrings.newsArticleUrl))
          .thenAnswer((_) async => http.Response('{"status": "ok"}', 200));
      print(newsRepository.getSourceNews("Joe Biden"));
      expect(await newsRepository.getSourceNews("Joe Biden"), isA<NewsArticleResponse>());
    });


  });


}


