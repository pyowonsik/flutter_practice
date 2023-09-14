import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_practice/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: "/",
      routes: [
        GoRoute(
          path: "/",
          builder: (_, state) => const App(),
        )
      ],
    );
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
