import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/news_model.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key, required this.articles});
  final Articles articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          articles.author ?? 'null',
          // style: GoogleFonts.lobster(textStyle: const TextStyle(fontSize: 20)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                articles.urlToImage.toString(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  articles.title.toString(),
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  articles.publishedAt.toString(),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  articles.description.toString(),
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
            ]),
      ),
    );
  }
}
