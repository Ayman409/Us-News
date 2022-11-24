import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/presentation/screens/detailes_screen.dart';
import '../../controllers/news_controller.dart';

class NewsScreen extends StatelessWidget {
  NewsController controller = Get.put(NewsController());
  final String cat;
  NewsScreen({super.key, required this.cat});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder(
        future: controller.fetchNews(cat),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            News data = snapshot.data!;
            return ListView.builder(
              itemCount: data.articles!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                          () => ArticlePage(articles: data.articles![index]));
                    },
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      elevation: 10,
                      shadowColor: Colors.black,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              data.articles![index].urlToImage.toString(),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                data.articles![index].title.toString(),
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                                maxLines: 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                data.articles![index].description.toString(),
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300),
                                maxLines: 2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                data.articles![index].publishedAt.toString(),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            // const SizedBox(
                            //   height: 10,
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.favorite_outline_outlined)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.share_rounded)),
                                ],
                              ),
                            )
                          ]),
                    ),
                  ),
                );
              },
            );
          } // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    ));
  }
}
