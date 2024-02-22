import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'views/pages/home_page.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        print(state.pathParameters);
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            print(state.pathParameters);
            return const HomePage();
          },
        ),
        GoRoute(
          path: 'learn',
          builder: (BuildContext context, GoRouterState state) {
            print(state.pathParameters);
            return Container(
              alignment: Alignment.center,
              child: const Text("learn"),
            );
          },
        ),
        GoRoute(
          path: 'learn/:id',
          builder: (BuildContext context, GoRouterState state) {
            print(state.pathParameters);
            final id = state.pathParameters['id'];
            return Container(
              alignment: Alignment.center,
              child: Text("learn $id"),
            );
            // return Container(
            //   // userId: id ?? "admin-default",
            // );
          },
        ),
      ],
    ),
  ],
);
