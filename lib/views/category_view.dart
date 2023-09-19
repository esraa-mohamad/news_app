import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';

import '../utils/config.dart';


class CategoryView extends StatelessWidget {
  const CategoryView({super.key ,required this.category});

  final String category ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shadowColor: const Color(0xffC8A9DC),
        backgroundColor: const Color(0xffEAD7F7),
        elevation: 4,
        centerTitle: true,
        title:  Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/earth.png',width: 20,height: 30,),
            const Text(
              'News',
              style: TextStyle(
                color: Config.colorNews,
                fontFamily: Config.primaryFont,
                fontSize: 25,
                fontWeight: Config.primaryWeight,
              ),
            ),
            const Text(
              'World',
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 35, 15, 0),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
