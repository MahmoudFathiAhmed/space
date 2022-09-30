import 'package:dartz/dartz.dart';
import 'package:space_project/core/error/exceptions.dart';
import 'package:space_project/core/error/failure.dart';
import 'package:space_project/core/usecase/base_use_case.dart';
import 'package:space_project/data/datasource/remote_data_source/remote_data_source.dart';
import 'package:space_project/domain/entity/apod/apod.dart';
import 'package:space_project/domain/entity/article/article.dart';
import 'package:space_project/domain/entity/solar_prediction/solar_prediction.dart';
import 'package:space_project/domain/repository/base_app_repository.dart';
import 'package:space_project/domain/usecase/get_apod_usecase.dart';
import 'package:space_project/domain/usecase/get_article_usecase.dart';

class AppRepository extends BaseAppRepository{
  final BaseAppRemoteDataSource baseAppRemoteDataSource;

  AppRepository(this.baseAppRemoteDataSource);

  @override
  Future<Either<Failure, List<Apod>>> getApod(ApodParameters parameters) async{
    final result = await baseAppRemoteDataSource.getApod(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.error.message));
    }
  }

  @override
  Future<Either<Failure, List<Article>>> getArticles(NoParameters parameters) async{
    final result = await baseAppRemoteDataSource.getArticles(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.error.message));
    }
  }

  @override
  Future<Either<Failure, List<Article>>> getArticle(ArticleParameters parameters) async{
    final result = await baseAppRemoteDataSource.getArticle(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.error.message));
    }
  }

  @override
  Future<Either<Failure, List<SolarPrediction>>> getSolarPrediction(NoParameters parameters) async{
    final result = await baseAppRemoteDataSource.getSolarPrediction(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.error.message));
    }
  }




}