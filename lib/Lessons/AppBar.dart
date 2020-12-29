import 'package:flutter/material.dart';

Widget AppBarCustom() {
  return AppBar(
    leading: Icon(Icons.arrow_back, color: Colors.black),
    backgroundColor: Colors.grey[50],
    centerTitle: true,
    elevation: 0,
    title: Text("Lessons", style: TextStyle(color: Colors.black)),
    actions: [
      Container(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 15,
              child: Center(
                  child: Text("10", style: TextStyle(color: Colors.white)))))
    ],
  );
}
