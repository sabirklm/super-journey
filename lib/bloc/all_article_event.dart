part of 'all_article_bloc.dart';

@immutable
sealed class AllArticleEvent {}

final class GetAllArticleEvent extends AllArticleEvent {
  final int size;

  GetAllArticleEvent({
    this.size = 6,
  });
}
