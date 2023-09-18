class ArticlesModel {

   String? image;
   String title;
   String? subTitle;
   String url;

  ArticlesModel(
      {
        required this.image,
        required this.title,
        required this.subTitle,
        required this.url
      }
  );

  factory ArticlesModel.fromJson(json)
  {
    return ArticlesModel(
      image:json['urlToImage'],
      title:json['title'],
      subTitle:json['description'],
      url:json['url'],
    );
  }
}

