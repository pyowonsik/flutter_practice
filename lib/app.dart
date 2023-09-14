import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              child: Text('Reorderable List'),
            ),
          )
        ],
      ),
    );
  }
}
