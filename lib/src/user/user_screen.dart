import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:flutter_practice/src/default_layout_widget.dart';

import 'model/user.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final dio = Dio();
  late List<User> items;

  @override
  void initState() {
    fetchUser();
    // TODO: implement initState
    super.initState();
  }

  void fetchUser() async {
    final resp = await dio.get('https://jsonplaceholder.typicode.com/users');
    List<dynamic> respData = resp.data;

    setState(() {
      items = respData.map((e) => User.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Text(items[index].email);
        },
      ),
    );
  }
}
