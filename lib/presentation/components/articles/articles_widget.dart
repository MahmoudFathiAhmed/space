import 'package:flutter/material.dart';
import 'package:space_project/presentation/components/search/search_card_widget.dart';

class ArticlesWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String source;
  final VoidCallback onTap;

  const ArticlesWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.source,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: SearchCardWidget(
        imageUrl: imageUrl,
        title: title,
        source: source,
      ),
    );
  }
}
