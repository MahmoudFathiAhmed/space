import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_project/core/services/service_locator.dart';
import 'package:space_project/core/utils/app_colors.dart';
import 'package:space_project/core/utils/values_manager.dart';
import 'package:space_project/presentation/components/article/article_widget.dart';
import 'package:space_project/presentation/controller/article/article_bloc.dart';

class ArticleScreen extends StatelessWidget {
  final int id;

  const ArticleScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      sl<ArticleBloc>()
        ..add(GetArticleEvent(id)),
      child: BlocBuilder<ArticleBloc, ArticleState>(
        builder: (context, state) {
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
            body:  SingleChildScrollView(
              physics: const  BouncingScrollPhysics(),
              child:
              ArticleWidget(
                title: state.article[0].title,
                source: state.article[0].newsSite,
                publishedAt: state.article[0].publishedAt,
                imageUrl: state.article[0].imageUrl,
                summary: state.article[0].summary,
              ),

              // ArticleWidget(
              //   title: 'NASA studying issue with JWST instrument',
              //   source: "SpaceNews",
              //   publishedAt: "2022-09-22T09:50:09.000Z",
              //   imageUrl:
              //   "https://spacenews.com/wp-content/uploads/2022/09/jwst-neptune.jpg",
              //   summary:
              //   'One part of an instrument on the James Webb Space Telescope is out of service temporarily, although project officials are confident it will not be a long-term problem. mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
              // ),

            ),
          );
        },
      ),
    );
  }
}
