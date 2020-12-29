import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  String title;
  CourseScreen({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}
