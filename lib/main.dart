import 'package:flutter/material.dart';
import 'package:news_app/views/news_home_view.dart';
import 'package:news_app/views/welcome_view.dart';

void main() {
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
        'NewsView':(context) =>  const NewsHome(),
        'WelcomeView':(context)=> WelcomeView(),
      },
      initialRoute: 'WelcomeView',
    );
  }
}

