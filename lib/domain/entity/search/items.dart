import 'package:equatable/equatable.dart';
import 'package:space_project/domain/entity/search/data.dart';
import 'package:space_project/domain/entity/search/linkes.dart';

class Items extends Equatable {
  final String href;
  final List<Data> data;
  final List<Links> links;

  const Items({
    required this.href,
    required this.data,
    required this.links,
  });

  @override
  List<Object> get props => [href, data, links];
}
