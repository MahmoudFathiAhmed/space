import 'package:equatable/equatable.dart';

class Apod extends Equatable {
  final String date;
  final String explanation;
  final String hdUrl;
  final String mediaType;
  final String title;
  final String url;

  const Apod({
    required this.date,
    required this.explanation,
    required this.hdUrl,
    required this.mediaType,
    required this.title,
    required this.url,
  });


  @override
  List<Object> get props => [date, explanation, hdUrl, mediaType, title, url,];
}

