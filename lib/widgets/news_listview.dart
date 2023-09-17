import 'package:flutter/material.dart';
import '../models/articles_model.dart';
import 'news_tile.dart';

// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
   NewsListView({super.key, required this.articles});

  final List<ArticlesModel> articles;


  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index)  {
          return  Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
        childCount: articles.length,
      ),

    );
  }
}

