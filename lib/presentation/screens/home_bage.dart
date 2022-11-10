// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:news_app/utils/text_style.dart';

import '../widgets/tab_bar_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: true,
              snap: true,
              systemOverlayStyle:
                  const SystemUiOverlayStyle(statusBarColor: Colors.white),
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.list_rounded),
                onPressed: () {},
              ),
              title: Text(
                'Us News',
                style: GoogleFonts.lobster(
                    textStyle: const TextStyle(fontSize: 30)),
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                )
              ],
              bottom: const TabBar(
                padding: EdgeInsets.only(bottom: 0.8),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  aTabBarText(text: 'Business'),
                  aTabBarText(text: 'Intertainment'),
                  aTabBarText(text: 'Sports'),
                  aTabBarText(text: 'Technology'),
                ],
              ),
            )
          ],
          body: TabBarView(children: Screens),
        ),
      ),
    );
  }
}
