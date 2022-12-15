import 'dart:ffi';

import 'package:flutter/material.dart';
import '../model/course.dart';
import '../model/lecture.dart';
import './view_courses_screen.dart';

import 'dart:math' as math;

class addCourseInfoScreen extends StatefulWidget {
  static const routeName = '/addCourseInfo';
  Courses course;
  addCourseInfoScreen(this.course);

  @override
  State<addCourseInfoScreen> createState() =>
      _addCourseInfoScreenState(course.courseCode);
}

class _addCourseInfoScreenState extends State<addCourseInfoScreen> {
  TimeOfDay time = TimeOfDay(hour: 10, minute: 10);
  day choosenDay = day.Sunday;
  List<DropdownMenuItem>? days = [
    DropdownMenuItem(child: Text('Sunday'), value: day.Sunday),
    DropdownMenuItem(child: Text('Monday'), value: day.Monday),
    DropdownMenuItem(child: Text('Tuesday'), value: day.Tuesday),
    DropdownMenuItem(child: Text('Wednesday'), value: day.Wednesday),
    DropdownMenuItem(child: Text('Thursday'), value: day.Thursday),
  ];
  List<TimeOfDay> choosenTimes = [];
  List<day> choosenDays = [];
  String courseCode;
  late String sectionNumber;
  late lecture choosenLectures;
  _addCourseInfoScreenState(this.courseCode);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int count = 1;

  List<Widget> lectures1 = [];
  lecture saveLectures() {
    List<Map<day, TimeOfDay>> temp1 = [];
    for (var i = 1; i < choosenDays.length; i++) {
      Map<day, TimeOfDay> temp = {choosenDays[i]: choosenTimes[i]};
      temp1[i].addAll(temp);
    }
    choosenLectures = lecture(sectionNumber, temp1);
    print(choosenLectures.section);
    return choosenLectures;
  }

  @override
  Widget build(BuildContext context) {
    var hours = time.hour.toString().padLeft(2, '0');
    var minutes = time.minute.toString().padLeft(2, '0');
    Widget buildLecturs(count, hours, minutes) {
      return Container(
        child: new Card(
          shadowColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
          elevation: 4,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 10, 10),
                child:
                    Text('Lecture ${count}: ', style: TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Center(
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                      child: Text(
                        '${hours}:${minutes}',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        TimeOfDay? newTime = await showTimePicker(
                            context: context, initialTime: time);
                        if (newTime == null) return;

                        setState(() {
                          time = newTime;
                          choosenTimes.add(time);
                        });
                      },
                      icon: Icon(Icons.edit),
                      iconSize: 20,
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: DropdownButton<dynamic>(
                            iconSize: 30,
                            items: days,
                            value: choosenDay,
                            onChanged: (value) => {
                                  setState(
                                    () {
                                      choosenDay = value as day;
                                      choosenDays.add(choosenDay);
                                    },
                                  )
                                }),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text('Section Number:'),
              SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) => sectionNumber = value,
                  autofillHints: ['Section Number'],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 400,
                    width: 400,
                    child: ListView.builder(
                      itemBuilder: ((context, index) {
                        return lectures1[index];
                      }),
                      itemCount: lectures1.length,
                    ),
                  ),
                ),
              ),
              Container(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        lectures1.add(buildLecturs(count, hours, minutes));
                      });
                      count += 1;
                    },
                    icon: Icon(Icons.add)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
