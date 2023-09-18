import 'package:flutter/material.dart';

class DefaultLayoutWidget extends StatelessWidget {
  final Widget child;
  const DefaultLayoutWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: child,
      ),
    );
  }
}
