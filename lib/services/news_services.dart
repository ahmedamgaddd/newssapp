import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/article.dart';
class NewsServices{


Future<List<Article>> getArticle() async {
  var responses = await Future.wait([
    http.get(Uri.parse(
        'https://newsapi.org/v1/articles?source=the-next-web&apiKey=3c88955c487e4d9db668f011dd85e737')),
    http.get(Uri.parse(
        'https://newsapi.org/v1/articles?source=associated-press&apiKey=3c88955c487e4d9db668f011dd85e737')),
  ]);
  return <Article>[
    ..._getArticlesFromResponse(responses[0]),
    ..._getArticlesFromResponse(responses[1]),
  ];
}

List<Article> _getArticlesFromResponse(http.Response response) {

    if (response.statusCode == 200) {

      Map <String, dynamic> json = jsonDecode(response.body);
      List <dynamic> body = json['articles'];

      List<Article>articles =
      body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    }else {
      throw ('oops error');
    }

}
}
