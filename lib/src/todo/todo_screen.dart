import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:flutter_practice/src/default_layout_widget.dart';

import 'model/todo.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final dio = Dio();
  List<Todo>? todoList;

  @override
  void initState() {
    fetchTodo();
    super.initState();
  }

  void fetchTodo() async {
    final resp = await dio.get('https://jsonplaceholder.typicode.com/todos');
    List<dynamic> respData = resp.data;

    setState(() {
      todoList = respData.map((e) => Todo.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
      child: (todoList == null)
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: todoList!.length,
              itemBuilder: (context, index) {
                return Text(todoList![index].title);
              },
            ),
    );
  }
}
