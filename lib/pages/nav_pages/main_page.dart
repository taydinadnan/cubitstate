import 'package:flutter/material.dart';

import 'bar_item_page.dart';
import '../home_page.dart';
import 'my_page.dart';
import 'search_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            title: Text('Bar'),
            icon: Icon(Icons.bar_chart_sharp),
          ),
          BottomNavigationBarItem(
            title: Text('Search'),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text('My'),
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
