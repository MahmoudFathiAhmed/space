import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_project/core/usecase/base_use_case.dart';
import 'package:space_project/core/utils/enum.dart';
import 'package:space_project/domain/entity/article/article.dart';
import 'package:space_project/domain/usecase/get_articles_usecase.dart';

part 'article_event.dart';

part 'articles_state.dart';

class ArticleBloc extends Bloc<ArticlesEvent, ArticleState> {
  GetArticlesUseCase getArticlesUseCase;

  ArticleBloc(this.getArticlesUseCase) : super(const ArticleState()) {
    on<GetArticleEvent>(_getArticle);
  }

  FutureOr<void> _getArticle(
      GetArticleEvent event, Emitter<ArticleState> emit) async{
    final result = await getArticlesUseCase(const NoParameters());
    result.fold(
          (l) =>
          emit(state.copyWith(
              articleState: RequestState.error,
              articleMessage: l.message)),
          (r) =>
          emit(state.copyWith(
              article: r, articleState: RequestState.loaded)),
    );
  }
}
