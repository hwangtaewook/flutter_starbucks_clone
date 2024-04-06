import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_starbucks_clone/page/order_page.dart';
import 'package:flutter_starbucks_clone/page/other_page.dart';
import 'package:flutter_starbucks_clone/page/pay_page.dart';
import 'package:flutter_starbucks_clone/page/shop_page.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../page/home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const PayPage(),
    const OrderPage(),
    const ShopPage(),
    const OtherPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '홈',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                label: 'Pay',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.coffee_outlined),
                label: 'Order',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'Shop',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz_outlined),
                label: 'Other',
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: Text(
              'Delivers',
              style: TextStyle(color: Colors.white),
            ), // 버튼의 라벨 텍스트
            icon: Icon(
              Icons.delivery_dining,
              color: Colors.white,
            ), // 버튼의 아이콘
            backgroundColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
