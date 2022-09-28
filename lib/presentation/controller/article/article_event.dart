part of 'article_bloc.dart';

abstract class ArticlesEvent extends Equatable {
  const ArticlesEvent();

  @override
  List<Object> get props => [];
}

class GetArticleEvent extends ArticlesEvent {

  const GetArticleEvent();

  @override
  List<Object> get props => [];
}
