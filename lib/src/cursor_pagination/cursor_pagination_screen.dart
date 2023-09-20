import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:flutter_practice/src/default_layout_widget.dart';

class CursorPaginationScreen extends StatefulWidget {
  const CursorPaginationScreen({super.key});

  @override
  State<CursorPaginationScreen> createState() => _CursorPaginationScreenState();
}

class _CursorPaginationScreenState extends State<CursorPaginationScreen> {
  final dio = Dio();

  @override
  void initState() {
    // TODO: implement initState
    fetchNewsData();
    super.initState();
  }

  void fetchNewsData() async {
    final resp =
        await dio.get('https://newsapi.org/v2/everything', queryParameters: {
      'q': 'apple',
      'from': 2023 - 09 - 19,
      'to': 2023 - 09 - 19,
      'sortBy': 'popularity',
      'apiKey': '49da920e07694939945756640e253bce',
    });

    print(resp.data);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
      child: Container(),
    );
  }
}
