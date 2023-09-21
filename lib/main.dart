import 'package:flutter/material.dart';
import 'package:flutter_practice/src/todo/todo_screen.dart';
import 'package:flutter_practice/src/user/user_screen.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_practice/app.dart';
import 'package:flutter_practice/src/cursor_pagination/cursor_pagination_screen.dart';
import 'package:flutter_practice/src/dio/dio_screen.dart';
import 'package:flutter_practice/src/freezed/freezed_screen.dart';
import 'package:flutter_practice/src/pagination/pagination_screen.dart';
import 'package:flutter_practice/src/reorederable_list/reorderable_list_page.dart';
import 'package:flutter_practice/src/rxdart/rxdart.dart';
import 'package:flutter_practice/src/secure_storage/secure_storage_screen.dart';
import 'package:flutter_practice/src/union/union_scrren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: SecureStorageScreen(),
    // );
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
        GoRoute(
          path: "/pagination_screen",
          builder: (_, state) => const PaginationScreen(),
        ),
        GoRoute(
          path: "/cursor_pagination_screen",
          builder: (_, state) => const CursorPaginationScreen(),
        ),
        GoRoute(
          path: "/user_screen",
          builder: (_, state) => const UserScreen(),
        ),
        GoRoute(
          path: "/todo_screen",
          builder: (_, state) => const TodoScreen(),
        ),
      ],
    );
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
