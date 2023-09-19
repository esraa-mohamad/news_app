import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

import '../utils/config.dart';

class CategoryCard extends StatelessWidget {
   const CategoryCard({super.key, required this.category});

   final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
            CategoryView(
                category: category.categoryName,
            ),
        ),
      );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          height: 90,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image:  DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(category.image)
              )
          ),
          child:  Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Config.colorCategory,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
