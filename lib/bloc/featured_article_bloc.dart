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
      var article = Article(
        title: 'Featured Article',
        sections: [
          Section(
            type: 'text',
            heading: 'Section Title',
            description: 'Section Description',
          ),
        ],
        type: 'Featured Article',
        description: 'Featured Article Description',
        url: 'https://www.google.com',
        urlToImage: 'https://picsum.photos/250?image=9',
      );
      emit(FeaturedArticleLoaded(article: article));
      return;
    });

    on<FeaturedArticleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
