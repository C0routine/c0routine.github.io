import 'package:blog/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:blog/core/router/router_config.dart';

class BlogApp extends StatelessWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Building BlogApp : ${AppRouter.v3.routerPath}');
    return MaterialApp.router(
      routerConfig: routerConfig,
    );
  }
}
