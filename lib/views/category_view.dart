import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';


class CategoryView extends StatelessWidget {
  const CategoryView({super.key ,required this.category});

  final String category ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
