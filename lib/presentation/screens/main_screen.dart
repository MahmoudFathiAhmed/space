import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space_project/core/routes/app_routes.dart';
import 'package:space_project/core/services/service_locator.dart';
import 'package:space_project/core/utils/app_assets.dart';
import 'package:space_project/core/utils/app_colors.dart';
import 'package:space_project/core/utils/app_strings.dart';
import 'package:space_project/core/utils/enum.dart';
import 'package:space_project/presentation/components/category_icon.dart';
import 'package:space_project/presentation/components/header_widget.dart';
import 'package:space_project/presentation/components/image_text_card.dart';
import 'package:space_project/presentation/controller/apod/apod_bloc.dart';
import 'package:space_project/presentation/screens/article_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ApodBloc>()..add(const GetApodEvent(10)),
      child: Scaffold(
        backgroundColor: AppColors.darkBcGrnd,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(title: 'Images'),
              const SizedBox(height: 10),
              BlocBuilder<ApodBloc, ApodState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 160,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      primary: false,
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.apod.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemBuilder: (context, index) => state.apodState ==
                              RequestState.loading
                          ? Shimmer.fromColors(
                              highlightColor: AppColors.offWhite2,
                              baseColor: AppColors.offWhite,
                              period: Duration(milliseconds: 3000),
                              child: ImageTextCard(
                                imageUrl: state.apod[index].mediaType == "image"
                                    ? state.apod[index].hdUrl
                                    : 'https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png',
                                title: state.apod[index].title,
                                height: 160,
                                width: 250,
                              ),
                            )
                          : ImageTextCard(
                              imageUrl: state.apod[index].mediaType == "image"
                                  ? state.apod[index].hdUrl
                                  : 'https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png',
                              title: state.apod[index].title,
                              height: 160,
                                width: 250,
                            ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30),
              Text(
                'Categories',
                style: TextStyle(
                  color: AppColors.offWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryIcon(
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.articlesRoute);
                    },
                    svgIcon: ImageAssets.planetIc,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  CategoryIcon(
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.searchRoute);
                    },
                    svgIcon: ImageAssets.searchIc,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  CategoryIcon(
                    onTap: () {},
                    svgIcon: ImageAssets.rocketIc,
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryIcon(
                    onTap: () {},
                    svgIcon: ImageAssets.atomIc,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  CategoryIcon(
                    onTap: () {},
                    svgIcon: ImageAssets.moonIc,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const HeaderWidget(title: 'videos'),
              const SizedBox(height: 10),
              SizedBox(
                height: 160,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 6,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) => ImageTextCard(
                    imageUrl:
                        'https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png',
                    title: '',
                    height: 160,
                                width: 250,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
