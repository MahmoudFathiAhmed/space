import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final int id;
  final String newsSite;
  final String title;
  final String url;
  final String imageUrl;
  final String summary;
  final String publishedAt;
  final String updatedAt;

  const Article({
    required this.id,
    required this.newsSite,
    required this.title,
    required this.url,
    required this.imageUrl,
    required this.summary,
    required this.publishedAt,
    required this.updatedAt,
  });

  @override
  List<Object> get props => [
        title,
        url,
        imageUrl,
        summary,
        publishedAt,
        updatedAt,
      ];
}
