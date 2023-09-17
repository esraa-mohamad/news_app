import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/utils/config.dart';
import 'package:news_app/widgets/category_listview.dart';
import 'package:news_app/widgets/news_listview.dart';

import '../models/articles_model.dart';
import '../services/new_services.dart';
import '../widgets/news_list_builder.dart';

class NewsHome extends StatefulWidget {
  const NewsHome({super.key});

  @override
  State<NewsHome> createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {


  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Config.colorGrey,
                fontFamily: Config.primaryFont,
                fontSize: 25,
                fontWeight: Config.primaryWeight,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  color: Config.primaryColor,
                  fontFamily: Config.primaryFont,
                  fontSize: 25,
                fontWeight: Config.primaryWeight
              ),
            ),
          ],
        ),
      ),
      // ignore: prefer_const_constructors
      body:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20
        ),
        child:  CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            NewsListViewBuilder(),
          ],
        ),

      )
    );
  }
}



