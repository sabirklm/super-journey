import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../models/article.dart';

part 'all_article_event.dart';
part 'all_article_state.dart';

class AllArticleBloc extends Bloc<AllArticleEvent, AllArticleState> {
  AllArticleBloc() : super(AllArticleInitial()) {
    on<GetAllArticleEvent>((event, emit) async {
      try {
        emit(AllArticleLoading());
        await Future.delayed(const Duration(seconds: 3));
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
        var articles = [
          ...List.generate(
            event.size,
            (index) => article,
          ),
        ];
        emit(AllArticleLoaded(articles: articles));
        return;
      } catch (e) {
        emit(AllArticleError(e.toString()));
        return;
      }
    });

    on<AllArticleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
