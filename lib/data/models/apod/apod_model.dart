import 'package:space_project/domain/entity/apod/apod.dart';

class ApodModel extends Apod {
  const ApodModel({
    required super.date,
    required super.explanation,
    required super.hdUrl,
    required super.mediaType,
    required super.title,
    required super.url,
  });

  factory ApodModel.fromJson(Map<String, dynamic> json) => ApodModel(
        date: json['date'],
        explanation: json['explanation'],
        hdUrl: json['hdurl']??"https://t4.ftcdn.net/jpg/04/00/24/31/360_F_400243185_BOxON3h9avMUX10RsDkt3pJ8iQx72kS3.jpg",
        mediaType: json['media_type'],
        title: json['title'],
        url: json['url'],
      );
}
