
class AppStrings {
  const AppStrings();
  static const String newsArticleUrl = "https://newsapi.org/v2/";
  static const String apiKey = "40f2058302f54861a17b235a850c49b3";

  static const String getSourcesUrl = '$newsArticleUrl/sources';
  static const String getTopHeadlinesUrl = '$newsArticleUrl/top-headlines';
  static const String everythingUrl = "$newsArticleUrl/everything";
}
