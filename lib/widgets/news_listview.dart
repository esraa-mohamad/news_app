import 'package:flutter/material.dart';

import 'news_tile.dart';

class NewsListView extends  StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index)  {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: NewsTile(),
          );
        },
        childCount: 10,
      ),

    );
  }
}
