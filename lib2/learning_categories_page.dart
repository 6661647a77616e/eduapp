import 'package:flutter/material.dart';
import 'course_list_page.dart';

class LearningCategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Categories'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Category 1'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseListPage(category: 'Category 1'),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Category 2'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseListPage(category: 'Category 2'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}