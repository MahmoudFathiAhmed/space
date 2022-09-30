import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_project/core/services/service_locator.dart';
import 'package:space_project/core/utils/app_colors.dart';
import 'package:space_project/core/utils/values_manager.dart';
import 'package:space_project/presentation/components/articles/articles_widget.dart';
import 'package:space_project/presentation/controller/articles/articles_bloc.dart';
import 'package:space_project/presentation/screens/article_screen.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ArticlesBloc>()..add(const GetArticlesEvent()),
      child: BlocBuilder<ArticlesBloc, ArticlesState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.darkBcGrnd,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.darkBcGrnd,
              title: const Text('Articles'),
              centerTitle: true,
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
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) =>
                const SizedBox(height: 10,),
                itemBuilder: (context, index) =>
                    ArticlesWidget(
                      imageUrl: state.articles[index].imageUrl,
                      title: state.articles[index].title,
                      source: state.articles[index].newsSite,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ArticleScreen(id: state.articles[index].id)));
                      },
                    ),
              ),
            ),
          );
        },
      ),
    );
  }
}

