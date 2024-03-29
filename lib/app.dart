import 'package:dev_community_portal/bloc/all_article_bloc.dart';
import 'package:dev_community_portal/bloc/article_bloc.dart';
import 'package:dev_community_portal/bloc/featured_article_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ArticleBloc(),
        ),
        BlocProvider(
          create: (context) => FeaturedArticleBloc(),
        ),
        BlocProvider(
          create: (context) => AllArticleBloc(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Dev Community Portal',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        routerConfig: goRouter,
        // routerDelegate: goRouter.routerDelegate,
      ),
    );
  }
}
