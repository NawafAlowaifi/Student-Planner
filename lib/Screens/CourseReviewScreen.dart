import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Widgets/Drawer.dart';

class CourseReview extends StatefulWidget {
  @override
  State<CourseReview> createState() => _CourseReviewState();
}

class _CourseReviewState extends State<CourseReview> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int counter = 0;
  double perc = 0;
  String reviewHolder = "This course is very hard!!";
  String StudentHolder = "Student 1";
  void clickReview() {
    setState(() {
      reviewHolder = "Fun course";
      StudentHolder = "Student 2";
    });
  }

  void clickReview1() {
    setState(() {
      reviewHolder = "This course is very hard!!";
      StudentHolder = "Student 1";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
          // leading: ElevatedButton(
          //   onPressed: () => _key.currentState!.openDrawer(),
          //   child: Icon(
          //     Icons.menu,
          //   ),
          // ),
          ),
      body: ListView(children: [
        Container(
            height: 218,
            width: double.infinity,
            color: Color.fromRGBO(214, 245, 255, 1),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 100),
                Container(
                  child: Text(
                    "$counter Absences",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 147, 237, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Text(
                    "$perc % percentage \n      (max 25%)",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 147, 237, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            primary: Color.fromRGBO(0, 147, 237, 1)),
                        child: Icon(
                          Icons.minimize,
                          size: 40,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          if (counter != 0)
                            setState(() {
                              counter--;
                              perc -= (3 * 10) * 25 / 100;
                            });
                        },
                      ),
                    ),
                    SizedBox(width: 60),
                    Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            primary: Color.fromRGBO(0, 147, 237, 1)),
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            counter++;
                            perc += (3 * 10) * 25 / 100;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 60),
                    Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            primary: Color.fromRGBO(0, 147, 237, 1)),
                        child: Icon(
                          Icons.refresh,
                          size: 40,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            counter = 0;
                            perc = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Container(
          height: 313,
          width: double.infinity,
          color: Color.fromRGBO(0, 147, 237, 1),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                    side: BorderSide(color: Colors.white, width: 2.0),
                    primary: Color.fromRGBO(0, 147, 237, 1)),
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              SizedBox(height: 60),
              Row(
                children: [
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(3),
                          primary: Colors.white),
                      child: Icon(
                        Icons.chevron_left,
                        size: 40,
                        color: Color.fromRGBO(0, 147, 237, 1),
                      ),
                      onPressed: clickReview1,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    child: Text(
                      "$reviewHolder",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(3),
                          primary: Colors.white),
                      child: Icon(
                        Icons.chevron_right,
                        size: 40,
                        color: Color.fromRGBO(0, 147, 237, 1),
                      ),
                      onPressed: clickReview,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 37,
                    height: 37,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.5),
                      color: Color(0xffd6f5ff),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/3177/3177440.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 146,
                    height: 30,
                    child: Text('$StudentHolder',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 213,
              width: double.infinity,
              color: Color.fromRGBO(214, 245, 255, 1),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      "Groups",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(0, 147, 237, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
