import 'package:flutter/material.dart';
import 'package:flutter_practice/src/default_layout_widget.dart';

import 'result.dart';

class UnionScreen extends StatelessWidget {
  const UnionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void dialog(String message) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              padding: const EdgeInsets.all(15),
              child: Text(message),
            ),
          );
        },
      );
    }

    final TextEditingController controller = TextEditingController();
    return DefaultLayoutWidget(
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text("Input the number"),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              autofocus: true,
              controller: controller,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                final result = (int.parse(controller.text) > 100)
                    ? Result.big(int.parse(controller.text))
                    : Result.small(int.parse(controller.text));
                result.when(
                  big: (value) {
                    dialog("100보다 큰 숫자 입니다.");
                  },
                  small: (value) {
                    dialog("100보다 작은 숫자 입니다.");
                  },
                );
              },
              child: const Text("제출"))
        ],
      ),
    );
  }
}
