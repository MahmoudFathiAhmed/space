import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_project/core/usecase/base_use_case.dart';
import 'package:space_project/core/utils/enum.dart';
import 'package:space_project/domain/entity/article/article.dart';
import 'package:space_project/domain/usecase/get_articles_usecase.dart';

part 'article_event.dart';

part 'articles_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  GetArticlesUseCase getArticlesUseCase;

  ArticlesBloc(this.getArticlesUseCase) : super(const ArticlesState()) {
    on<GetArticlesEvent>(_getArticles);
  }

  FutureOr<void> _getArticles(
      GetArticlesEvent event, Emitter<ArticlesState> emit) async{
    final result = await getArticlesUseCase(const NoParameters());
    result.fold(
          (l) =>
          emit(state.copyWith(
              articlesState: RequestState.error,
              articlesMessage: l.message)),
          (r) =>
          emit(state.copyWith(
              articles: r, articlesState: RequestState.loaded)),
    );
  }
}
