import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/news_model.dart';

class DataServices {
  var url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=6c9eb4b8b4b64351a1013f6b2054fdbf');

  Future getNews() async {
    var response = await http.get(url);
    return Articles.fromJson(jsonDecode(response.body));
  }
}
