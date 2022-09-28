part of 'article_bloc.dart';

class ArticleState extends Equatable {
  final List<Article> article;
  final RequestState articleState;
  final String articleMessage;

  const ArticleState({
    this.article = const [
      Article(
        id: 1,
        newsSite: 'SpaceNews',
        title: 'title',
        url: 'url',
        imageUrl: 'imageUrl',
        summary: 'summary',
        publishedAt: 'publishedAt',
        updatedAt: 'updatedAt',),
      Article(
        id: 1,
        newsSite: 'SpaceNews',
        title: 'title',
        url: 'url',
        imageUrl: 'imageUrl',
        summary: 'summary',
        publishedAt: 'publishedAt',
        updatedAt: 'updatedAt',),
      Article(
        id: 1,
        newsSite: 'SpaceNews',
        title: 'title',
        url: 'url',
        imageUrl: 'imageUrl',
        summary: 'summary',
        publishedAt: 'publishedAt',
        updatedAt: 'updatedAt',),
      Article(
        id: 1,
        newsSite: 'SpaceNews',
        title: 'title',
        url: 'url',
        imageUrl: 'imageUrl',
        summary: 'summary',
        publishedAt: 'publishedAt',
        updatedAt: 'updatedAt',),
    ],
    this.articleState = RequestState.loading,
    this.articleMessage = '',
  });

  ArticleState copyWith({
    List<Article>? article,
    RequestState? articleState,
    String? articleMessage,
  }) {
    return ArticleState(
      article: article ?? this.article,
      articleState: articleState ?? this.articleState,
      articleMessage: articleMessage ?? this.articleMessage,
    );
  }

  @override
  List<Object> get props => [article, articleState, articleMessage];
}
