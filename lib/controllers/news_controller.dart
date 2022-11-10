import 'dart:convert';

import 'package:get/get.dart';
import 'package:news_app/models/news_model.dart';
import 'package:http/http.dart' as http;

import '../services/news_services.dart';

class NewsController extends GetxController {
  Future<News> fetchNews(String cat) async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=eg&category=${cat}&apiKey=6c9eb4b8b4b64351a1013f6b2054fdbf'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return News.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
