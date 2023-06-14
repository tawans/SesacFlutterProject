import 'package:flutter/material.dart';

import 'liberaryManager.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final LibraryManager libraryManager = LibraryManager();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '도서대출 관리 앱',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(libraryManager: libraryManager),
    );
  }
}
