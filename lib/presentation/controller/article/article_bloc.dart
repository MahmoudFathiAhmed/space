import 'dart:async';


import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_project/core/utils/enum.dart';
import 'package:space_project/domain/entity/article/article.dart';
import 'package:space_project/domain/usecase/get_article_usecase.dart';

part 'article_event.dart';
part 'article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  GetArticleUseCase getArticleUseCase;
  ArticleBloc(this.getArticleUseCase) : super(const ArticleState()) {
    on<GetArticleEvent>(_getArticle);
  }

  FutureOr<void> _getArticle(GetArticleEvent event, Emitter<ArticleState> emit) async{
    final result = await getArticleUseCase(ArticleParameters(id: event.id));
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
