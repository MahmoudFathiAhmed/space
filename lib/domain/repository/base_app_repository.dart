import 'package:dartz/dartz.dart';
import 'package:space_project/core/error/failure.dart';
import 'package:space_project/core/usecase/base_use_case.dart';
import 'package:space_project/domain/entity/apod/apod.dart';
import 'package:space_project/domain/entity/article/article.dart';
import 'package:space_project/domain/entity/solar_prediction/solar_prediction.dart';
import 'package:space_project/domain/usecase/get_apod_usecase.dart';
import 'package:space_project/domain/usecase/get_article_usecase.dart';

abstract class BaseAppRepository{
  Future <Either<Failure, List<Apod>>> getApod(ApodParameters parameters);
  Future <Either<Failure, List<Article>>> getArticles(NoParameters parameters);
  Future <Either<Failure, List<Article>>> getArticle(ArticleParameters parameters);
  Future <Either<Failure, List<SolarPrediction>>> getSolarPrediction(NoParameters parameters);
}