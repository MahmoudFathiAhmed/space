import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final String description;
  final String title;
  final String nasaId;
  final String mediaType;

  const Data({required this.description,
    required this.title,
    required this.nasaId,
    required this.mediaType});

  @override
  List<Object> get props => [description, title, nasaId, mediaType];
}
