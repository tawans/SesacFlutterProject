import 'package:flutter/material.dart';

import 'home/home_page.dart';
import 'locker/locker_page.dart';
import 'shorts/shorts_page.dart';
import 'subscribe/subscribe_page.dart';
import 'upload/upload_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _currentIndex = 0;

  final _pages = [
    const HomePage(),
    const ShortsPage(),
    const UploadPage(),
    const SubscribePage(),
    const LockerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/images/home_fill.png',
              width: 30,
              height: 30,
            ),
            icon: Image.asset(
              'assets/images/home.png',
              width: 30,
              height: 30,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/images/short_fill.png',
              width: 25,
              height: 25,
            ),
            icon: Image.asset(
              'assets/images/short.png',
              width: 25,
              height: 25,
            ),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/upload.png',
              width: 40,
              height: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Stack(
              children: [
                Image.asset(
                  'assets/images/subscribe_fill.png',
                  width: 25,
                  height: 25,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            icon: Stack(
              children: [
                Image.asset(
                  'assets/images/subscribe.png',
                  width: 25,
                  height: 25,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            label: '구독',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/images/library_fill.png',
              width: 25,
              height: 25,
            ),
            icon: Image.asset(
              'assets/images/library.png',
              width: 25,
              height: 25,
            ),
            label: '보관함',
          ),
        ],
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
