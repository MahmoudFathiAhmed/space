import 'package:flutter/material.dart';
import 'package:space_project/core/utils/app_colors.dart';

class ImageTextCard extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final String title;
  final double titleFontSize;
  const ImageTextCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.height,
    required this.width,
    this.titleFontSize = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          child: Container(
            width: width - 40,
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w500,
                fontSize: titleFontSize,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
