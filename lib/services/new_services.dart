import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsServices {

  NewsServices(this.dio);

  final Dio dio ;

 Future<List<ArticlesModel>> getNews()  async {
   try {
     Response response =await dio.get(
         'https://newsapi.org/v2/top-headlines?country=us&apiKey=010db234bea3435ab36aa343daeaa872&category=general'
     );

     Map<String,dynamic> jsonData = response.data;

     List<dynamic> articles =jsonData['articles'];

     List<ArticlesModel> articlesList =[];

     for (var article in articles)
     {
         ArticlesModel articlesModel = ArticlesModel(
             image:article['urlToImage'],
             title:article['title'],
             subTitle:article['description'],
             source: Source(
               id :article['source']['id'],
               name: article['source']['name'],
             ),
         );
         articlesList.add(articlesModel);
     }

     return  articlesList;
   }  catch (e) {
     return [];
   }
 }
}