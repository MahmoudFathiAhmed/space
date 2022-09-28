import 'package:flutter/material.dart';
import 'package:space_project/core/utils/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.offWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: TextStyle(color: AppColors.myGrey),
          ),
        ),
      ],
    );
  }
}