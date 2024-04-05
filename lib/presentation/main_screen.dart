import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool showAppBar = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NotificationListener<ScrollUpdateNotification>(
          onNotification: (notification) {
            if (notification.metrics.pixels >= 346 && !showAppBar) {
              setState(() {
                showAppBar = true;
              });
            } else if (notification.metrics.pixels < 346 && showAppBar) {
              setState(() {
                showAppBar = false;
              });
            }
            return true;
          },
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                scrolledUnderElevation: 0,
                elevation: 0,
                // 스크롤될 때 앱 바를 위로 올리도록 설정
                floating: false,
                // 스크롤될 때 앱 바가 화면 상단에 고정되도록 설정
                pinned: showAppBar,
                // 확장된 높이 설정
                expandedHeight: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      Spacer(),
                      Row(
                        children: [
                          if (showAppBar == true) Icon(Icons.mail_outline),
                          if (showAppBar == true) Text('What\'s New')
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    // 리스트 아이템을 구성하는 위젯을 반환
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 350,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Container(
                                child: Lottie.network(
                                    'https://lottie.host/c3830993-8bd3-42ba-b77c-7d30c07142a1/SmkbSf3SiN.json',
                                    fit: BoxFit.contain),
                                height: 194,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xff036635), Colors.white],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: [0.6, 1.0],
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 100,
                                width: 56,
                                color: Colors.yellow,
                              ),
                              Container(
                                height: 56,
                                child: const Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.mail_outline),
                                        Text('What\'s New')
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Placeholder(),
                        const Placeholder(),
                        const Placeholder(),
                        const Placeholder(),
                        const Placeholder(),
                        const Placeholder(),
                        const Placeholder(),
                      ],
                    );
                  },
                  childCount: 20, // 리스트의 아이템 개수
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
