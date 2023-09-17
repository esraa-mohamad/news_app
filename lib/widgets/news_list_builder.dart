// عشان ابني الليست بطريقة صح وكود منظم اكتر بدل ما الكود يبقا داخل في بعض
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/articles_model.dart';
import '../services/new_services.dart';
import '../utils/config.dart';
import 'news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  List<ArticlesModel> articles = [];

  bool isLoading = true;

  // اول مرحله بتمر بيها  state  بحيث بيشوف اي هنا وينفذه الاول بعمل لها اوفرايد وازود عليها الكود الي عايزه
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles =await NewsServices(Dio()).getNews();
    isLoading=false;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ?
    SliverToBoxAdapter(
      child: Center(
        child: CircularProgressIndicator(
          color: Config.colorCategory,
        ),
      ),
    ):
    NewsListView(
      articles: articles,
    );
  }
}