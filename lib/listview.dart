import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  ListViewScreen({super.key});

  final List<Map<String, dynamic>> students = [
    {"name": "ram", "age": 20, "grade": "A+"},
    {"name": "shyam", "age": 23, "grade": "A"},
    {"name": "hari ", "age": 22, "grade": "C+"},
    {"name": "sita", "age": 25, "grade": "B+"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text(students[index]["name"][0])),
              title: Text(students[index]["name"]),
              subtitle: Text(students[index]["age"].toString()),
              trailing: Text(students[index]["grade"]),
            ),
          );
        },
      ),
    );
  }
}
