import 'package:flutter/material.dart';

class CourseDetailPage extends StatelessWidget {
  final String course;

  CourseDetailPage({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$course Details'),
      ),
      body: Center(
        child: Text(
          'Course details for $course',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}