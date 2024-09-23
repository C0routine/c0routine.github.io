import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:blog/core/router/app_router.dart';
import 'package:blog/feature/root/root_screen.dart';
import 'package:blog/feature/home/home_screen.dart';

final routerConfig = GoRouter(
  initialLocation: AppRouter.v3.path,
  routes: [
    GoRoute(
      name: AppRouter.root.name,
      path: AppRouter.root.routerPath,
      builder: (BuildContext context, GoRouterState state) => const RootScreen(),
      routes: [
        GoRoute(
          name: AppRouter.v1.name,
          path: AppRouter.v1.routerPath,
          builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
          routes: [],
        ),
        GoRoute(
          name: AppRouter.v2.name,
          path: AppRouter.v2.routerPath,
          builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
          routes: [],
        ),
        GoRoute(
          name: AppRouter.v3.name,
          path: AppRouter.v3.routerPath,
          builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
          routes: [],
        ),
      ],
    ),
  ],
);
