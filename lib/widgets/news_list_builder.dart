// عشان ابني الليست بطريقة صح وكود منظم اكتر بدل ما الكود يبقا داخل في بعض
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import '../services/new_services.dart';
import '../utils/config.dart';
import 'news_listview.dart';


// ignore: must_be_immutable
class NewsListViewBuilder extends StatefulWidget {

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // List<ArticlesModel> articles = [];
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future=NewsServices(Dio()).getNews();
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
          return SliverToBoxAdapter(
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
          return SliverToBoxAdapter(
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