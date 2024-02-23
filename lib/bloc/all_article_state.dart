part of 'all_article_bloc.dart';

@immutable
sealed class AllArticleState {}

final class AllArticleInitial extends AllArticleState {}

final class AllArticleLoading extends AllArticleState {}

final class AllArticleLoaded extends AllArticleState {
  final List<Article> articles;

  AllArticleLoaded({required this.articles});
}

final class AllArticleError extends AllArticleState {
  final String message;

  AllArticleError(this.message);
}
