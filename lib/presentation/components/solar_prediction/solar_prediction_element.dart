import 'package:flutter/material.dart';
import 'package:space_project/core/utils/app_colors.dart';

class SolarPredictionElement extends StatelessWidget {
  final String image;
  final String name;
  final String value;
  const SolarPredictionElement({
    Key? key, required this.image, required this.name, required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.darkGrey,
          child: Image.asset(
            image,
            fit: BoxFit.fill,
            height: 40,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(color: AppColors.offWhite, fontSize: 18),
        ),
        const SizedBox(
          width: 10,
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(color: Colors.deepOrange, fontSize: 18),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}