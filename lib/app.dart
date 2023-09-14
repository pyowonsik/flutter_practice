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
              child: Text('Reorderable List'),
            ),
          )
        ],
      ),
    );
  }
}
