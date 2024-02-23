part of 'featured_article_bloc.dart';

@immutable
sealed class FeaturedArticleState {}

final class FeaturedArticleInitial extends FeaturedArticleState {}

final class FeaturedArticleLoading extends FeaturedArticleState {}

final class FeaturedArticleLoaded extends FeaturedArticleState {
  final Article article;
  FeaturedArticleLoaded({required this.article});
}

final class FeaturedArticleError extends FeaturedArticleState {
  final String message;
  FeaturedArticleError(this.message);
}
