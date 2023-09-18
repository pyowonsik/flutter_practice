import 'package:flutter/material.dart';

import 'package:rxdart/rxdart.dart';

class RxDartScreen extends StatelessWidget {
  const RxDartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDart Todo App'),
      ),
      body: TodoPage(),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final List<String> todos = [];
  final BehaviorSubject<List<String>> _todo =
      BehaviorSubject<List<String>>.seeded([]);

// final publishSubject = PublishSubject<String>();
// final behaviorSubject = BehaviorSubject<String>.seeded("Initial Value");

// publishSubject.add("Event 1");
// behaviorSubject.add("Event A");

// publishSubject.listen((data) => print("PublishSubject: $data")); // 출력되지 않음
// behaviorSubject.listen((data) => print("BehaviorSubject: $data")); // BehaviorSubject: Initial Value, BehaviorSubject: Event A

  void _addTodo() {
    final todo = _todoController.text;
    if (todo.isNotEmpty) {
      setState(() {
        todos.add(todo);
        _todo.add([...todos]); // 리스트를 업데이트하고 BehaviorSubject에 추가
      });
      _todoController.clear(); // 입력 필드 초기화
    }
  }

  final TextEditingController _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          onChanged: (value) {
            // TextField의 값을 직접 업데이트하지 않음
          },
          decoration: InputDecoration(labelText: '할 일을 입력하세요'),
          controller: _todoController,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _addTodo,
          child: Text('저장'),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: StreamBuilder<List<String>>(
            stream: _todo.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final todos = snapshot.data;
                return ListView.builder(
                  itemCount: todos!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(todos[index]),
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _todo.close();
    _todoController.dispose();
    super.dispose();
  }
}
