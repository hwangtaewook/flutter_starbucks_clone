import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true, // 앱 바를 항상 화면 상단에 고정
              // 확장된 높이 설정
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('SliverAppBar Example'),
                background: Image.network(
                  'https://example.com/image.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  // 스크롤에 따라 이미지 및 컨테이너의 위치 변경
                  if (index == 0) {
                    // 이미지 위에 있는 텍스트 위젯
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'This is the content below the SliverAppBar',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    );
                  } else {
                    // 스크롤 가능한 목록의 항목들
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  }
                },
                // 스크롤 가능한 목록의 아이템 수
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
