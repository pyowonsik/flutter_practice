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
                final result = int.tryParse(controller.text) != null
                    ? Result.success(int.parse(controller.text))
                    : const Result.failure("숫자가 아닙니다.");
                result.when(
                  success: (value) {
                    dialog("숫자가 성공적으로 입력되었습니다. \n입력한 숫자 $value");
                  },
                  failure: (error) {
                    dialog(error);
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
