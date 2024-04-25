import 'package:flutter/material.dart';
import 'course_detail_page.dart';

class CourseListPage extends StatelessWidget {
  final String category;

  CourseListPage({required this.category});

  List<String> fetchCoursesFromCategory(String category) {
    // Implement the logic to fetch courses based on the category
    // Return a list of course names
    // Example implementation:
    if (category == 'Math') {
      return ['Algebra', 'Geometry', 'Calculus'];
    } else if (category == 'Science') {
      return ['Physics', 'Chemistry', 'Biology'];
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> courses = fetchCoursesFromCategory(category);

    return Scaffold(
      appBar: AppBar(
        title: Text('Courses - $category'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            title: Text(course),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetailPage(course: course),
                ),
              );
            },
          );
        },
      ),
    );
  }
}