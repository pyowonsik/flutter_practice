import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              context.go('/reorderable_list');
            },
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(16),
              child: const Text('Orderable List'),
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              context.go('/union_screen');
            },
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(16),
              child: const Text('UnionScreen'),
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              context.go('/freezed_screen');
            },
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(16),
              child: const Text('FreezedScreen'),
            ),
          )
        ],
      ),
    );
  }
}
