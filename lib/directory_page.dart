import 'package:flutter/material.dart';

class DirectoryPage extends StatelessWidget {
  final List<String> seminars = [
    "Web Development Workshop",
    "Mobile App Development Training",
    "UI/UX Design Conference",
    "Cloud Computing Seminar",
    "Data Science Symposium",
    "Cybersecurity Forum"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seminar Directory'),
      ),
      body: ListView.builder(
        itemCount: seminars.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(seminars[index]),
            onTap: () {
              // Navigasi ke halaman detail seminar
              Navigator.pushNamed(
                context,
                '/seminar',
                arguments: seminars[index],
              );
            },
          );
        },
      ),
    );
  }
}
