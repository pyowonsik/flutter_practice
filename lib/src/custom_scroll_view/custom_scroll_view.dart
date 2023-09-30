import 'package:flutter/material.dart';

class CustomScrollViewScreen extends StatefulWidget {
  const CustomScrollViewScreen({Key? key}) : super(key: key);

  @override
  _CustomScrollViewScreenState createState() => _CustomScrollViewScreenState();
}

class _CustomScrollViewScreenState extends State<CustomScrollViewScreen> {
  List<int> items = List.generate(20, (index) => index + 1); // 예제로 20개의 아이템 생성

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: Colors.amber,
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('App Bar'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // 스크롤 가능한 목록 아이템 생성
                return ListTile(
                  title: Text('아이템 $index'),
                );
              },
              childCount: items.length, // 목록 아이템 개수
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0, // 푸터의 높이 설정
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // 고정된 푸터 아이템 생성
                return Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text(
                    '푸터 $index',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
              childCount: 1, // 푸터 아이템 개수 (1개만 필요)
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CustomScrollViewScreen(),
  ));
}
