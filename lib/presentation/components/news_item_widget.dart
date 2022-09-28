import 'package:flutter/material.dart';
import 'package:space_project/core/utils/app_colors.dart';
import 'package:space_project/presentation/components/image_text_card.dart';

class NewsItemWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String time;
  const NewsItemWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ImageTextCard(
            imageUrl: imageUrl,
            title: title,
            width: 340,
            height: 200,
            titleFontSize: 24,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 250,
                  child: Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.offWhite,
                      fontSize: 14,
                    ),
                  ),
                ),
                Text(
                  time,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.offWhite,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}