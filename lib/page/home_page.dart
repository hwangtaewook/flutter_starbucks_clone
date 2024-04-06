import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Stack(
            children: [
              Image.asset('assets/starbucks_news.png'),
              const SizedBox(
                height: 211.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '내용 보기',
                          style: TextStyle(
                            fontSize: 13,
                            backgroundColor: Colors.white38,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
                child: Text(
                  '''스타벅스 딸기 라떼와
추운 겨울을 상큼하게!''',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '1★ untill Grenn Level',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 300,
                      height: 10,
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.grey[3000],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                        value: 0.8,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Row(
                children: [
                  Text(
                    '4',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    '/5★',
                    style: TextStyle(fontSize: 27, color: Colors.grey),
                    textAlign: TextAlign.end,
                  ),
                ],
              )
            ],
          ),
        ),
        const SliverAppBar(
          scrolledUnderElevation: 0,
          elevation: 1,
          pinned: true,
          floating: true,
          expandedHeight: 0.0,
          title: Row(
            children: [
              Icon(Icons.mail_outline),
              SizedBox(width: 10),
              Text(
                'What\'s New',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 10),
              Icon(Icons.local_activity_outlined),
              SizedBox(width: 10),
              Text(
                'Coupon',
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Icon(Icons.notifications_none)
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                color: Colors.green,
                height: 350,
                width: 350,
                child: const Center(
                  child: Text(
                    '광고',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'What\'s New',
                    style: TextStyle(fontSize: 24),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.green,
                            height: 170,
                            width: 200,
                          ),
                          const Column(
                            children: [
                              Text(
                                '가방 판매 가방 판매 가방 판매 가방 판매 가방 판매 가방 판매',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.yellow,
                            height: 170,
                            width: 200,
                          ),
                          const Column(
                            children: [
                              Text(
                                '가방 판매 가방 판매 가방 판매 가방 판매 가방 판매 가방 판매',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.green,
                            height: 170,
                            width: 200,
                          ),
                          const Column(
                            children: [
                              Text(
                                '가방 판매 가방 판매 가방 판매 가방 판매 가방 판매 가방 판매',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.yellow,
                            height: 170,
                            width: 200,
                          ),
                          const Column(
                            children: [
                              Text(
                                '가방 판매 가방 판매 가방 판매 가방 판매 가방 판매 가방 판매',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
