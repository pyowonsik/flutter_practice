import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = FlutterSecureStorage();
final dio = Dio();

class SecureStorageScreen extends StatefulWidget {
  @override
  _SecureStorageScreenState createState() => _SecureStorageScreenState();
}

class _SecureStorageScreenState extends State<SecureStorageScreen> {
  final storage = FlutterSecureStorage();
  String? authToken;

  @override
  void initState() {
    super.initState();
    _loadAuthToken();
  }

  Future<void> _loadAuthToken() async {
    final accessToken = await storage.read(key: 'ACCESS_TOKEN');
    final refreshToken = await storage.read(key: 'REFRESH_TOKEN');
    if (accessToken == null && refreshToken == null) {
      // 토큰이 없으면 로그인 페이지로 이동
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login 완료 , Token 유효'),
            ElevatedButton(
              onPressed: () async {
                // 토큰을 삭제하고 로그인 페이지로 이동
                await storage.delete(key: 'ACCESS_TOKEN');
                await storage.delete(key: 'REFRESH_TOKEN');

                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text('로그아웃'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  var email = '';
  var password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인 페이지'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  email = value;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                onChanged: (value) {
                  password = value;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  // email : password
                  final rawString = '$email:$password';

                  // 토큰 발급을 위하여 string을  base64로 인코딩 코드
                  Codec<String, String> stringToBase64 = utf8.fuse(base64);
                  String token = stringToBase64.encode(rawString);

                  final resp = await dio.post(
                    'http://testUrl/login',
                    options:
                        Options(headers: {'authorization': 'Basic $token'}),
                  );

                  // 로그인 성공시
                  var accessToken =
                      "your_access_token"; // resp.data.accessToken : api서버를 통해 발급받은 accessToken
                  var refreshToken =
                      "your_refresh_token"; // resp.data.refreshToken : api서버를 통해 발급받은 refreshToken

                  await storage.write(key: 'ACCESS_TOKEN', value: accessToken);
                  await storage.write(
                      key: 'REFRESH_TOKEN', value: refreshToken);

                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecureStorageScreen()));
                },
                child: Text('로그인'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
