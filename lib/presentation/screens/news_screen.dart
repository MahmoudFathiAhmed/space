import 'package:flutter/material.dart';
import 'package:space_project/core/utils/app_colors.dart';
import 'package:space_project/core/utils/values_manager.dart';
import 'package:space_project/presentation/components/news_item_widget.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBcGrnd,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.darkBcGrnd,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: AppColors.offWhite,
            size: AppSize.s35,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(30.0),
        child: NewsItemWidget(
          imageUrl:
              'https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
          title: 'Nasa Approves Heliophysics Missions',
          description:
              'Nasa has approved two heliphysics missions to explore the sun and the system that drives space weather near earth',
          time: '1h ago',
        ),
      ),
    );
  }
}


