import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

import 'package:space_project/core/utils/app_colors.dart';
class CategoryIcon extends StatelessWidget {
  final String svgIcon;
  final VoidCallback onTap;
  const CategoryIcon({
    Key? key, required this.svgIcon, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Transform.rotate(
        angle: -math.pi / 4,
        child: Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            color: AppColors.offWhite,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Transform.rotate(
              angle: math.pi / 4,
              child: SvgPicture.asset(
                svgIcon,
                height: 19,
                width: 19,
              ),
            ),
          ),
        ),
      ),
    );
  }
}