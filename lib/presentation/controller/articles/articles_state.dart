part of 'articles_bloc.dart';

class ArticlesState extends Equatable {
  final List<Article> articles;
  final RequestState articlesState;
  final String articlesMessage;

  const ArticlesState({
    this.articles = const [
      Article(
        id: 1,
        newsSite: 'SpaceNews',
        title: 'title',
        url: 'url',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIajpGxf93A5xebCE7UVhyOuAFf637zHqrnQ&usqp=CAU',
        summary: 'summary',
        publishedAt: 'publishedAt',
        updatedAt: 'updatedAt',),
      Article(
        id: 1,
        newsSite: 'SpaceNews',
        title: 'title',
        url: 'url',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIajpGxf93A5xebCE7UVhyOuAFf637zHqrnQ&usqp=CAU',
        summary: 'summary',
        publishedAt: 'publishedAt',
        updatedAt: 'updatedAt',),
      Article(
        id: 1,
        newsSite: 'SpaceNews',
        title: 'title',
        url: 'url',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIajpGxf93A5xebCE7UVhyOuAFf637zHqrnQ&usqp=CAU',
        summary: 'summary',
        publishedAt: 'publishedAt',
        updatedAt: 'updatedAt',),
      Article(
        id: 1,
        newsSite: 'SpaceNews',
        title: 'title',
        url: 'url',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIajpGxf93A5xebCE7UVhyOuAFf637zHqrnQ&usqp=CAU',
        summary: 'summary',
        publishedAt: 'publishedAt',
        updatedAt: 'updatedAt',),
    ],
    this.articlesState = RequestState.loading,
    this.articlesMessage = '',
  });

  ArticlesState copyWith({
    List<Article>? articles,
    RequestState? articlesState,
    String? articlesMessage,
  }) {
    return ArticlesState(
      articles: articles ?? this.articles,
      articlesState: articlesState ?? this.articlesState,
      articlesMessage: articlesMessage ?? this.articlesMessage,
    );
  }

  @override
  List<Object> get props => [articles, articlesState, articlesMessage];
}
