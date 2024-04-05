import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    Image.asset('assets/starbucks_news.png'),
                    SizedBox(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 20,
                      ),
                      child: Text(
                        '''스타벅스 딸기 라떼와
추운 겨울을 상큼하게!''',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
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
                          Text(
                            '1★ untill Grenn Level',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            width: 300,
                            height: 10,
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.grey[3000],
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.green),
                              value: 0.8,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
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
              const SliverToBoxAdapter(
                child: SizedBox(
                  child: Placeholder(),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  child: Placeholder(),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  child: Placeholder(),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  child: Placeholder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
