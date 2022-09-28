import 'package:get_it/get_it.dart';
import 'package:space_project/data/datasource/remote_data_source/remote_data_source.dart';
import 'package:space_project/data/repository/app_repository.dart';
import 'package:space_project/domain/repository/base_app_repository.dart';
import 'package:space_project/domain/usecase/get_apod_usecase.dart';
import 'package:space_project/domain/usecase/get_articles_usecase.dart';
import 'package:space_project/presentation/controller/apod/apod_bloc.dart';
import 'package:space_project/presentation/controller/article/article_bloc.dart';
final sl = GetIt.instance;
class ServiceLocator{
  void init(){
    //BLOC
    sl.registerFactory(() => ApodBloc(sl(),));
    sl.registerFactory(() => ArticleBloc(sl(),));

    //USE CASES
    sl.registerLazySingleton(() => GetApodUseCase(sl()));
    sl.registerLazySingleton(() => GetArticlesUseCase(sl()));


    // REPOSITORY
    sl.registerLazySingleton<BaseAppRepository>(
            () => AppRepository(sl()));

    // DATA SOURCE
    sl.registerLazySingleton<BaseAppRemoteDataSource>(
            () => AppRemoteDataSource());
  }
}