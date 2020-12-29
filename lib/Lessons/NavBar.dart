import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBar();
}

class _NavBar extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          SizedBox(width: 20),
          title("Design", isActive: true),
          SizedBox(width: 20),
          divider(),
          SizedBox(width: 20),
          title(
            "Environment",
          ),
          SizedBox(width: 20),
          divider(),
          SizedBox(width: 20),
          title(
            "Technology",
          ),
          SizedBox(width: 20),
          divider(),
          SizedBox(width: 20),
          title("Reasearch"),
          SizedBox(width: 20),
          divider(),
          SizedBox(width: 20),
          title(
            "Science",
          ),
          SizedBox(width: 20),
          divider(),
          SizedBox(width: 20),
          title(
            "Management",
          ),
          SizedBox(width: 20),
        ]));
  }

  Widget title(String text, {bool isActive = false}) {
    return Container(
      height: 30,
      child: Column(children: [
        Text("$text",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: isActive ? Colors.black : Colors.grey[300])),
        SizedBox(height: 10),
        Visibility(
            visible: isActive,
            child: Center(
                child: Container(
              height: 3,
              width: 18,
              color: Colors.indigo[800],
            )))
      ]),
    );
  }

  Widget divider() {
    return Container(
        height: 5,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              CircleAvatar(
                radius: 3,
                backgroundColor: Colors.grey[300],
              )
            ]));
  }
}
