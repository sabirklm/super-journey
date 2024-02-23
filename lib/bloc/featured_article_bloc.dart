import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../models/article.dart';

part 'featured_article_event.dart';
part 'featured_article_state.dart';

class FeaturedArticleBloc
    extends Bloc<FeaturedArticleEvent, FeaturedArticleState> {
  FeaturedArticleBloc() : super(FeaturedArticleInitial()) {
    on<GetFeaturedArticleEvent>((event, emit) async {
      emit(FeaturedArticleLoading());
      await Future<void>.delayed(const Duration(seconds: 3));
      var article = Article();
      emit(FeaturedArticleLoaded(article: article));
      return;
    });

    on<FeaturedArticleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
