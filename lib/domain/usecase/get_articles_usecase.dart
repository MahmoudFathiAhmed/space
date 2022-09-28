import 'package:dartz/dartz.dart';
import 'package:space_project/core/error/failure.dart';
import 'package:space_project/core/usecase/base_use_case.dart';
import 'package:space_project/domain/entity/article/article.dart';
import 'package:space_project/domain/repository/base_app_repository.dart';

class GetArticlesUseCase extends BaseUseCase <List<Article>,NoParameters>{
  final BaseAppRepository baseAppRepository;

  GetArticlesUseCase(this.baseAppRepository);

  @override
  Future<Either<Failure, List<Article>>> call(NoParameters parameters) async{
    return await baseAppRepository.getArticles(parameters);
  }

}