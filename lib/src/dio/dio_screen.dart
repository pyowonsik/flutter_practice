import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_practice/src/default_layout_widget.dart';

class DioScreen extends StatelessWidget {
  const DioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    return DefaultLayoutWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final resp = await dio.get(
                'https://reqres.in/api/users?page=1',
                queryParameters: {'page': 1},
              );

              print('Dio ${resp.data}');
            },
            child: const Text('Dio Get'),
          ),
          const SizedBox(
            width: 100,
          ),
          ElevatedButton(
            onPressed: () async {
              final resp = await http.get(
                Uri.parse(
                  'https://reqres.in/api/users?page=1',
                ),
              );

              print('Http : ${resp.body}');
              print('Http Decode : ${jsonDecode(resp.body)}');
            },
            child: const Text('Http Get'),
          ),
          const SizedBox(
            width: 100,
          ),
          ElevatedButton(
            onPressed: () async {
              FormData formData = FormData.fromMap({
                'username ': 'pyo',
                'email': 'pyo@test.com',
              });
              formData.files.add(
                MapEntry(
                  "profile_picture",
                  await MultipartFile.fromFile(
                    "path/to/file.jpg",
                    filename: "profile.jpg",
                  ),
                ),
              );
              try {
                Response response = await dio.post(
                  'https://example.com/api/endpoint',
                  data: formData,
                );

                // 성공적인 응답 처리
                print(response.data);
              } catch (e) {
                // 오류 처리
                print("Error: $e");
              }
            },
            child: const Text('FormData Get'),
          ),
        ],
      ),
    );
  }
}
