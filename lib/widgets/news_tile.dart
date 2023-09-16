import 'package:flutter/material.dart';
import 'package:news_app/utils/config.dart';


// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              ('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.odishanewsagency.com%2Fentertainment-news-from-e%2F&psig=AOvVaw3BBN7B46ympowSvC5hqSlb&ust=1694116903033000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCNC4xLfjloEDFQAAAAAdAAAAABAR'),
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Watch the latest top stories with France 24: catch up with the news with a new bulletin every 30 minutes',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Config.smallTextColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: Config.primaryFontEnglish
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Follow the headlines in realtime with the latest France 24 on-demand news bulletin. France 24's latest updates and reports are also available in French, Spanish and Arabic.",
          maxLines: 2,
          style: TextStyle(
              color: Config.colorGrey,
              fontSize: 14,
            fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}
