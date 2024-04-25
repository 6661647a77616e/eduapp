import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content Page'),
      ),
      body: Center(
        child: Text(
          'This is the content page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}