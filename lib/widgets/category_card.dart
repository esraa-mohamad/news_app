import 'package:flutter/cupertino.dart';
import 'package:news_app/models/category_model.dart';

import '../utils/config.dart';

class CategoryCard extends StatelessWidget {
   const CategoryCard({super.key, required this.category});

   final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Config.colorGrey,
            ),
          ),
        ),
      ),
    );
  }
}
