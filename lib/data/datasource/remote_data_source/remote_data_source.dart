import 'package:dio/dio.dart';
import 'package:space_project/core/error/exceptions.dart';
import 'package:space_project/core/network/api_constants.dart';
import 'package:space_project/core/network/error_message_model.dart';
import 'package:space_project/core/usecase/base_use_case.dart';
import 'package:space_project/core/utils/values_manager.dart';
import 'package:space_project/data/models/apod/apod_model.dart';
import 'package:space_project/data/models/article/article_model.dart';
import 'package:space_project/data/models/solar_prediction/solar_prediction_model.dart';
import 'package:space_project/domain/usecase/get_apod_usecase.dart';
import 'package:space_project/domain/usecase/get_article_usecase.dart';

abstract class BaseAppRemoteDataSource{
  Future<List<ApodModel>> getApod(ApodParameters parameters);
  Future<List<ArticleModel>> getArticles(NoParameters parameters);
  Future<List<ArticleModel>> getArticle(ArticleParameters parameters);
  Future<List<SolarPredictionModel>> getSolarPrediction(NoParameters parameters);

}
class AppRemoteDataSource extends BaseAppRemoteDataSource{
  @override
  Future<List<ApodModel>> getApod(ApodParameters parameters) async{
    final response = await Dio().get(ApiConstants.apodPath(parameters.count),
    );
    if (response.statusCode == AppCount.c200) {
      return List<ApodModel>.from((response.data as List)
          .map((e) => ApodModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<ArticleModel>> getArticles(NoParameters parameters) async{
    final response = await Dio().get(ApiConstants.articlesPath());
    if (response.statusCode == AppCount.c200) {
      return List<ArticleModel>.from((response.data as List)
          .map((e) => ArticleModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
  
  @override
  Future<List<ArticleModel>> getArticle(ArticleParameters parameters) async{
    final response = await Dio().get(ApiConstants.articlePath(),
    queryParameters: {
      'id': parameters.id,
    }
    );
    if (response.statusCode == AppCount.c200) {
      print(response.data);
      return List<ArticleModel>.from((response.data as List)
          .map((e) => ArticleModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<SolarPredictionModel>> getSolarPrediction(NoParameters parameters) async{
    final response = await Dio().get(ApiConstants.solarWindPredictionPath());
    if (response.statusCode == AppCount.c200) {
      print(response.data);
      return List<SolarPredictionModel>.from((response.data as List)
          .map((e) => SolarPredictionModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

}