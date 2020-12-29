import 'package:flutter/material.dart';
import "package:avatareducation/Lessons/AppBar.dart";
import 'NavBar.dart';
import "Course.dart";

class Lessons extends StatefulWidget {
  @override
  State<Lessons> createState() => _Lessons();
}

class _Lessons extends State<Lessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBarCustom(),
      body: Container(
          child: ListView(
        children: [
          SizedBox(height: 20),
          NavBar(),
          SizedBox(height: 5),
          Course(
            title: "UI Design",
            subtitle: "Visual apperance of app sjd",
            url:
                "https://assets.justinmind.com/wp-content/uploads/2019/11/20-best-ux-design-blogs.png",
            bookmarked: false,
            locked: false,
            progressPercentage: 50,
            showProgressBar: true,
          ),
          SizedBox(height: 10),
          Course(
            title: "UX Design",
            subtitle: "Brain Behind the Design",
            url:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL1LkQjnjZcWFFg9WnP9uRejGkQORtyp_lXw&usqp=CAU",
            bookmarked: false,
            locked: false,
            progressPercentage: 50,
            showProgressBar: true,
          ),
          SizedBox(height: 10),
          Course(
            title: "Interface Design",
            subtitle: "Includes animation and effect",
            url: "https://i.ytimg.com/vi/0RxxQrJCmV4/maxresdefault.jpg",
            bookmarked: false,
            locked: true,
            progressPercentage: 50,
            showProgressBar: false,
          ),
          SizedBox(height: 10),
          Course(
            title: "Industrial Design",
            subtitle: "Visual Appearance of the app",
            url:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEZ8YDpOROZQbsubE3WIDd2XHSc8WtkFtZ2g&usqp=CAU",
            bookmarked: false,
            locked: true,
            progressPercentage: 0,
            showProgressBar: true,
          ),
        ],
      )),
    );
  }
}
