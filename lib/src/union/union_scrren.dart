import 'package:flutter/material.dart';

import 'result.dart';

class UnionScreen extends StatefulWidget {
  const UnionScreen({Key? key}) : super(key: key);

  @override
  State<UnionScreen> createState() => _UnionScreenState();
}

class _UnionScreenState extends State<UnionScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Freezed Union Types Test'),
      ),
      body: Column(
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
                    dialog(" 큰 숫자 입니다.");
                  },
                  small: (value) {
                    dialog("작은 숫자 입니다.");
                  },
                );
              },
              child: const Text("제출"))
        ],
      ),
    );
  }

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
}
