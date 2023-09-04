import 'package:flutter/material.dart';
import 'package:news_app/utils/config.dart';

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
                fontFamily: Config.primaryFontEnglish,
                fontSize: 25,
                fontWeight: Config.primaryWeightEnglish,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  color: Config.primaryColor,
                  fontFamily: Config.primaryFontEnglish,
                  fontSize: 25,
                fontWeight: Config.primaryWeightEnglish
              ),
            ),
          ],
        ),
      ),
      body: const Column(
        children: [

        ],
      )
    );
  }
}
