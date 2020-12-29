import 'package:flutter/material.dart';
import "package:avatareducation/CourseScreen.dart";

class Course extends StatefulWidget {
  bool bookmarked, locked, showProgressBar;
  String title, subtitle;
  String url;
  double progressPercentage;
  Course({
    this.bookmarked = false,
    this.locked = false,
    this.showProgressBar = true,
    @required this.title,
    @required this.subtitle,
    @required this.url,
    this.progressPercentage = 0,
  });
  @override
  State<Course> createState() => _Course();
}

class _Course extends State<Course> {
  bool isBookmarked = false;
  bool bookmarkSet = false;

  @override
  Widget build(BuildContext context) {
    if (!bookmarkSet)
      setState(() {
        isBookmarked = widget.bookmarked;
        bookmarkSet = true;
      });
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CourseScreen(title: widget.title);
          }));
        },
        child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(children: [
              Expanded(
                  flex: 9,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                NetworkImage("${widget.url}"))),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("${widget.title}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 8),
                                        Text("${widget.subtitle}",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black26,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                  Spacer(),
                                  Container(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        IconButton(
                                            onPressed: () {
                                              setState(() {
                                                isBookmarked = !isBookmarked;
                                              });
                                            },
                                            icon: Icon(
                                              isBookmarked
                                                  ? Icons.bookmark
                                                  : Icons.turned_in_not,
                                              size: 20,
                                            ))
                                      ]))
                                ]),
                                Visibility(
                                    visible: widget.showProgressBar,
                                    child: SizedBox(height: 10)),
                                progressBar(widget.progressPercentage,
                                    show: widget.showProgressBar)
                              ])))),
              SizedBox(width: 10),
              Expanded(
                  flex: 1,
                  child: Container(
                      child: Center(
                          child: Icon(
                              widget.locked ? Icons.lock : Icons.lock_open,
                              color: widget.locked
                                  ? Colors.grey[400]
                                  : Colors.grey[500]))))
            ])));
  }

  Widget progressBar(double percentage, {bool show = true}) {
    return Visibility(
        visible: show,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                        color: percentage > 0 ? Colors.green : Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)))),
            SizedBox(width: 5),
            Expanded(
                flex: 1,
                child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                        color:
                            percentage > 33 ? Colors.green : Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)))),
            SizedBox(width: 5),
            Expanded(
                flex: 1,
                child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                        color:
                            percentage > 66 ? Colors.green : Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)))),
          ],
        ));
  }
}
