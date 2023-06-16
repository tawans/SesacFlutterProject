import 'package:flutter/material.dart';

class YoutubeClone extends StatelessWidget {
  final List<Tab> tabs = [
    Tab(text: 'Tab 1'),
    Tab(text: 'Tab 2'),
    Tab(text: 'Tab 3'),
    Tab(text: 'Tab 4'),
    Tab(text: 'Tab 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            'assets/images/youtube_logo.png',
            width: 36.0,
            height: 36.0,
          ),
          title: Text('Youtube'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // TODO: Implement search functionality
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // TODO: Implement user profile functionality
              },
            ),
          ],
          bottom: TabBar(
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: tabs.map((Tab tab) {
            return Container(
              alignment: Alignment.center,
              child: Text(tab.text),
            );
          }).toList(),
        ),
      ),
    );
  }
}
