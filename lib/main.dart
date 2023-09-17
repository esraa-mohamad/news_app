import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/new_services.dart';
import 'package:news_app/views/category_view.dart';
import 'package:news_app/views/news_home_view.dart';

void main() {
  NewsServices(Dio()).getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'NewsHome':(context) =>  const NewsHome(),
        'CategoryView':(context)=>const CategoryView(),
      },
      initialRoute: 'NewsHome',
    );
  }
}

