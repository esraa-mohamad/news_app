
import 'package:flutter/material.dart';
import 'package:news_app/utils/config.dart';
import 'package:news_app/widgets/category_listview.dart';
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
      // ignore: prefer_const_constructors
      body:  Padding(
        padding: const EdgeInsets.fromLTRB(
          20,35,20,0
        ),
        child:  const CustomScrollView(
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
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),

      )
    );
  }
}



