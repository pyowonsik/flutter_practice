import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_practice/src/default_layout_widget.dart';

class ReorderableListPage extends StatefulWidget {
  const ReorderableListPage({super.key});

  @override
  State<ReorderableListPage> createState() => _ReorderableListState();
}

Random randomSeed = Random();

class _ReorderableListState extends State<ReorderableListPage> {
  List<int> numbers = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 10; i++) {
      numbers.add(randomSeed.nextInt(100) + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // randomNumber = randomSeed.nextInt(100) + 1;
                        numbers.add(randomSeed.nextInt(100) + 1);
                      });
                    },
                    child: const Text('추가')),
              ],
            ),
            Expanded(
                child: ReorderableListView(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    children: [
                      for (int index = 0; index < numbers.length; index += 1)
                        ListTile(
                          key: Key('$index'),
                          title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${numbers[index]}'),
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        numbers.remove(numbers[index]);
                                      });
                                    },
                                    child: const Text('삭제')),
                              ]),
                          trailing: const Icon(Icons.menu),
                        ),
                    ],
                    onReorder: (int oldIndex, int newIndex) {
                      setState(() {
                        if (oldIndex < newIndex) {
                          newIndex -= 1;
                        }
                        numbers.insert(newIndex, numbers.removeAt(oldIndex));
                      });
                    })),
          ],
        ),
      ),
    );
  }
}
