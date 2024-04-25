import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(LearnApp());
}

class LearnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}