// عشان ابني الليست بطريقة صح وكود منظم اكتر بدل ما الكود يبقا داخل في بعض
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import '../services/new_services.dart';
import '../utils/config.dart';
import 'news_listview.dart';


// ignore: must_be_immutable
class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key , required this.category});

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // List<ArticlesModel> articles = [];
  // ignore: prefer_typing_uninitialized_variables
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future=NewsServices(Dio()).getNews(
      category: widget.category,
    );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
    future:future ,
    builder: (context,snapshot)
    {
      if(snapshot.hasData)
      {
          return
            NewsListView(
              articles: snapshot.data!,
            );
      }
      else if (snapshot.hasError)
      {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text(
                'OOPS! There ia a problem',
                style: TextStyle(
                  fontWeight: Config.primaryWeight,
                  fontFamily: Config.primaryFont,
                  color: Config.primaryColor,
                  fontSize: 25
                ),
              ),
            ),
          );
      }
      else
      {
          return const SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(
                    color: Config.colorCategory,
                  ),
                )
          );
      }
    }

    );


    // isLoading ?
    // SliverToBoxAdapter(
    //   child: Center(
    //     child: CircularProgressIndicator(
    //       color: Config.colorCategory,
    //     ),
    //   ),
    // ):
    // NewsListView(
    //   articles: articles,
    // );
  } } // end class listview build