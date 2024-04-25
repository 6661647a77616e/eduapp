import 'package:flutter/material.dart';

class StudyBuddyListPage extends StatelessWidget {
  final List<StudyBuddy> studyBuddies = [
    StudyBuddy(
      name: 'John Doe',
      disability: 'Visual Impairment',
      topicInterest: 'Computer Science',
    ),
    StudyBuddy(
      name: 'Jane Smith',
      disability: 'Hearing Impairment',
      topicInterest: 'Mathematics',
    ),
    // Add more study buddies here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Buddy List'),
      ),
      body: ListView.builder(
        itemCount: studyBuddies.length,
        itemBuilder: (context, index) {
          final studyBuddy = studyBuddies[index];
          return ListTile(
            title: Text(studyBuddy.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Disability: ${studyBuddy.disability}'),
                Text('Topic Interest: ${studyBuddy.topicInterest}'),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudyBuddyDetailPage(studyBuddy: studyBuddy),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class StudyBuddy {
  final String name;
  final String disability;
  final String topicInterest;

  StudyBuddy({
    required this.name,
    required this.disability,
    required this.topicInterest,
  });
}

class StudyBuddyDetailPage extends StatelessWidget {
  final StudyBuddy studyBuddy;

  StudyBuddyDetailPage({required this.studyBuddy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Buddy Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${studyBuddy.name}'),
            Text('Disability: ${studyBuddy.disability}'),
            Text('Topic Interest: ${studyBuddy.topicInterest}'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle "Let's Study Together" button press
                // Implement the desired functionality, such as initiating a chat or opening a study session
              },
              child: Text("Let's Study Together"),
            ),
          ],
        ),
      ),
    );
  }
}