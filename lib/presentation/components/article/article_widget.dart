import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:space_project/core/utils/app_colors.dart';
import 'package:space_project/presentation/components/speak_text_widget.dart';

class ArticleWidget extends StatelessWidget {
  final String title;
  final String source;
  final String publishedAt;
  final String imageUrl;
  final String summary;
  const ArticleWidget({
    Key? key,
    required this.title,
    required this.source,
    required this.publishedAt,
    required this.imageUrl,
    required this.summary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Text(
            title,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: AppColors.offWhite,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                source.toUpperCase(),
                style: TextStyle(fontSize: 18, color: AppColors.myGrey),
              ),
              Text(
                publishedAt.substring(0, 10),
                style: TextStyle(fontSize: 18, color: AppColors.myGrey),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            child: Image.network(imageUrl),
          ),
          const SizedBox(
            height: 20,
          ),
          SpeakTextWidget(text: summary),
          const SizedBox(
            height: 20,
          ),
          ReadMoreText(
            summary,
            style: TextStyle(fontSize: 17, color: AppColors.offWhite2),
            trimLines: 7,
            colorClickableText: AppColors.offWhite,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: ' Show less',
            moreStyle: TextStyle(
                fontSize: 16,
                color: AppColors.teal,
                fontWeight: FontWeight.bold),
            lessStyle: TextStyle(
                fontSize: 16,
                color: AppColors.teal,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
