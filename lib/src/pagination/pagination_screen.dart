import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:flutter_practice/src/default_layout_widget.dart';
import 'package:flutter_practice/src/pagination/pagination_model.dart';

class PaginationScreen extends StatefulWidget {
  const PaginationScreen({super.key});

  @override
  _PaginationScreenState createState() => _PaginationScreenState();
}

class _PaginationScreenState extends State<PaginationScreen> {
  List<PaginationModel> items = [];
  int currentPage = 1;

  bool isLoading = false;
  late List<PaginationModel> pageList;
  final dio = Dio();
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    setState(() {
      isLoading = true;
    });

    setState(() {
      items.clear();
    });

    // 데이터는 JSONPlaceholder에서 무료 API를 받아서 화면을 구성한다.
    final resp = await dio.get('https://jsonplaceholder.typicode.com/posts',
        queryParameters: {'_page': '$currentPage', '_limit': 10});
    List<dynamic> respData = resp.data;
    pageList = respData.map((e) => PaginationModel.fromJson(e)).toList();
    if (resp.statusCode == 200) {
      setState(() {
        items.addAll(pageList);
      });
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWidget(
      child: Column(
        children: [
          (isLoading)
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Text('${items[index].id} : '),
                          Expanded(child: Text(items[index].title))
                        ],
                      );
                    },
                  ),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (currentPage > 1) {
                    currentPage--;
                    fetchData();
                  }
                },
                child: const Text('이전'),
              ),
              const SizedBox(
                width: 16.0,
              ),
              ElevatedButton(
                onPressed: () {
                  if (currentPage < 10) {
                    currentPage++;
                    fetchData();
                  }
                },
                child: const Text('다음'),
              )
            ],
          )
        ],
      ),
    );
  }
}
