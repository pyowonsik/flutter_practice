import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_practice/app.dart';
import 'package:flutter_practice/src/dio/dio_screen.dart';
import 'package:flutter_practice/src/freezed/freezed_screen.dart';
import 'package:flutter_practice/src/rxdart/rxdart.dart';
import 'package:flutter_practice/src/reorederable_list/reorderable_list_page.dart';
import 'package:flutter_practice/src/union/union_scrren.dart';

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
        ),
        GoRoute(
          path: "/reorderable_list",
          builder: (_, state) => const ReorderableListPage(),
        ),
        GoRoute(
          path: "/freezed_screen",
          builder: (_, state) => const FreezedScreen(),
        ),
        GoRoute(
          path: "/union_screen",
          builder: (_, state) => const UnionScreen(),
        ),
        GoRoute(
          path: "/dio_screen",
          builder: (_, state) => const DioScreen(),
        ),
        GoRoute(
          path: "/rxdart_screen",
          builder: (_, state) => const RxDartScreen(),
        ),
      ],
    );
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
