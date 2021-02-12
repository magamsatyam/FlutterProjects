
import 'package:flutter/material.dart';
import 'package:flutter_news_app/bloc/get_breaking_news_bloc.dart';
import 'package:flutter_news_app/main.dart';
import 'package:flutter_news_app/model/news_article_response.dart';
import 'package:flutter_news_app/repository/repository.dart';
import 'package:flutter_news_app/screens/main_screen.dart';
import 'package:flutter_news_app/screens/tabs/search_screen.dart';
import 'package:flutter_news_app/screens/tabs/sources_screen.dart';
import 'package:flutter_news_app/widgets/home_widgets/breaking_news.dart';
import 'package:flutter_test/flutter_test.dart';

// abstract class MockRepository extends Mock implements NewsRepository{}

void main(){
  testWidgets("Sample test to load home screen", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    await tester.pump(Duration.zero);


    // await tester.tap(find.byWidget(SourceScreen()));
    // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    final titleFinder = find.text('Breaking news');


    expect(titleFinder, findsOneWidget);
  });

  testWidgets("Sample test to load Search screen", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    await tester.pump(Duration.zero);


    await tester.tap(find.byWidget(SearchScreen()));
    // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    final titleFinder = find.byElementType(TextFormField);


    expect(titleFinder, findsOneWidget);
  });
}