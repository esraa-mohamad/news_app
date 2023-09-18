import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/utils/config.dart';


// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key ,required this.articleModel});

  final ArticlesModel articleModel ;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child:articleModel.image != null ?
            Image.network(
              articleModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ) :
            Image.asset(
                'assets/images/news.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
    ),
        const SizedBox(
          height: 12,
        ),
         Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Config.smallTextColor,
            fontSize: 20,
            fontWeight: Config.primaryWeightTitle,
            fontFamily: Config.primaryFontTitle
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? 'No any description for this news',
          maxLines: 2,
          style: const TextStyle(
              color: Config.colorGrey,
              fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
