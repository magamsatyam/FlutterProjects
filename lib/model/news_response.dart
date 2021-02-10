
import 'package:flutter_news_app/model/source.dart';

class NewsResponse{
  final List<SourceModel> sources;
  final String error;

  NewsResponse(this.sources, this.error);

  NewsResponse.fromJson(Map<String, dynamic> json)
      : sources =
  (json["sources"] as List).map((i) => new SourceModel.fromJson(i)).toList(),
        error = "";

  NewsResponse.withError(String errorValue)
      : sources = List(),
        error = errorValue;
}