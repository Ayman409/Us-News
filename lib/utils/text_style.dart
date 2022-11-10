import 'package:flutter/cupertino.dart';
import '../presentation/screens/news_scrreen.dart';

const TextStyle aTextStyle = TextStyle(fontFamily: 'lobster', fontSize: 20);

List<Widget> Screens = [
  NewsScreen(cat: 'business'),
  NewsScreen(cat: 'entertainment'),
  NewsScreen(cat: 'sports'),
  NewsScreen(cat: 'technology'),
];
