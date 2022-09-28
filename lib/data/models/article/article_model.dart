import 'package:space_project/domain/entity/article/article.dart';

class ArticleModel extends Article {
  const ArticleModel({
    required super.id,
    required super.newsSite,
    required super.title,
    required super.url,
    required super.imageUrl,
    required super.summary,
    required super.publishedAt,
    required super.updatedAt,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json)=>
      ArticleModel(
          id: json['id'],
          newsSite: json['newsSite'],
          title: json['title'],
          url: json['url'],
          imageUrl: json['imageUrl'],
          summary: json['summary'],
          publishedAt: json['publishedAt'],
          updatedAt: json['updatedAt'],
      );
}
