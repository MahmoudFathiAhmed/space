import 'package:equatable/equatable.dart';

class Links extends Equatable {
  final String href;
  final String render;

  const Links({
    required this.href,
    required this.render,
  });

  @override
  List<Object> get props => [href, render];
}
