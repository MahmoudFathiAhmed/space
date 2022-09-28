import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:space_project/core/error/failure.dart';
import 'package:space_project/core/usecase/base_use_case.dart';
import 'package:space_project/domain/entity/article/article.dart';
import 'package:space_project/domain/repository/base_app_repository.dart';

class GetArticleUseCase extends BaseUseCase <Article,ArticleParameters>{
  final BaseAppRepository baseAppRepository;

  GetArticleUseCase(this.baseAppRepository);

  @override
  Future<Either<Failure, Article>> call(ArticleParameters parameters) async{
    return await baseAppRepository.getArticle(parameters);
  }

}

class ArticleParameters extends Equatable{

  final int? id;

  const ArticleParameters({this.id});
  
  @override
  List<Object> get props => [id!];

  
}