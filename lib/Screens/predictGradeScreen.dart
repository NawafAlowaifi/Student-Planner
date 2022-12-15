import 'package:flutter/material.dart';
import '../model/courseGrade.dart';

import 'dart:math' as math;

class predictGradeScreen extends StatefulWidget {
  static const routeName = '/predictGrade';
  @override
  State<predictGradeScreen> createState() => _predictGradeScreenState();
}

class _predictGradeScreenState extends State<predictGradeScreen> {
  List<DropdownMenuItem>? grades = [
    DropdownMenuItem(child: Text('A+'), value: 100),
    DropdownMenuItem(child: Text('A'), value: 94),
    DropdownMenuItem(child: Text('B+'), value: 89),
    DropdownMenuItem(child: Text('B'), value: 84),
    DropdownMenuItem(child: Text('C+'), value: 79),
    DropdownMenuItem(child: Text('C'), value: 74),
    DropdownMenuItem(child: Text('D+'), value: 69),
    DropdownMenuItem(child: Text('D'), value: 64),
    DropdownMenuItem(child: Text('F'), value: 0),
  ];
  List<DropdownMenuItem> difficulty = [
    DropdownMenuItem(child: Text('1'), value: 1),
    DropdownMenuItem(child: Text('2'), value: 2),
    DropdownMenuItem(child: Text('3'), value: 3),
    DropdownMenuItem(child: Text('4'), value: 4),
    DropdownMenuItem(child: Text('5'), value: 5),
  ];
  var choosenDifficulty = 1;
  var choosenGrade = 100;
  var choosenCode = '';
  List<CourseGrade> items = [
    // CourseGrade('swe 444', 94),
    // CourseGrade('swe 444', 94),
    // CourseGrade('swe 444', 94),
    // CourseGrade('swe 444', 94),
    // CourseGrade('swe 444', 94)
  ];
  int result = 0;
  String gradePresenter(int grade) {
    String pGrade = '';
    if (grade <= 100 && grade >= 95) {
      pGrade = 'A+';
    } else if (grade <= 94 && grade >= 90) {
      pGrade = 'A';
    } else if (grade <= 89 && grade >= 85) {
      pGrade = 'B+';
    } else if (grade <= 84 && grade >= 80) {
      pGrade = 'B';
    } else if (grade <= 79 && grade >= 75) {
      pGrade = 'C+';
    } else if (grade <= 74 && grade >= 70) {
      pGrade = 'C';
    } else if (grade <= 69 && grade >= 65) {
      pGrade = 'D+';
    } else if (grade <= 64 && grade >= 60) {
      pGrade = 'D';
    } else {
      pGrade = 'F';
    }
    return pGrade;
  }

  int calculatedifficulty(var x) {
    int temp = 1;
    if (x == 1) {
      temp = 1;
    } else if (x == 2) {
      temp = 2;
    } else if (x == 3) {
      temp = 3;
    } else if (x == 4) {
      temp = 4;
    } else if (x == 5) {
      temp = 5;
    }
    return temp * 7;
  }

  calculateResult() {
    int temp1 = 0;
    int temp2 = 0;
    for (var i = 0; i < items.length; i++) {
      temp1 += ((items[i].courseGrade) * (items.length - i));
      temp2 += (items.length - i);
      temp1 = temp1 - calculatedifficulty(choosenDifficulty);
    }
    result = temp1 ~/ temp2;
  }

  Widget buildCards(index) {
    Color temp =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.1);
    return SizedBox(
      height: 80,
      width: 80,
      child: Card(
        elevation: 0,
        color: temp.withOpacity(0.1),
        child: Column(
          children: [
            Card(
              elevation: 0,
              color: temp.withOpacity(0.1),
              child: Text(
                items[index].courseCode,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: temp.withOpacity(0.1),
              child: Text(
                gradePresenter(items[index].courseGrade),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  setStater() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Predict Your Grade'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                items.clear();
              });
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: SizedBox(
                  height: 500,
                  width: 350,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            child: SizedBox(
                                child: Text(
                              'Course difficulty: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                          DropdownButton<dynamic>(
                              style: TextStyle(color: Colors.black),
                              items: difficulty,
                              value: choosenDifficulty,
                              onChanged: (value) => {
                                    setState(
                                      () {
                                        choosenDifficulty = value;
                                      },
                                    )
                                  }),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: SizedBox(
                                  height: 80,
                                  width: 180,
                                  child: Text(
                                    'To Use This Feature Properly You Need To add five courses and Sort them By The Latest To The Earliest',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return buildCards(index);
                          })
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Card(
                            elevation: 8,
                            color: Theme.of(context).primaryColor,
                            child: Text(
                              'Predict',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 28,
                              ),
                            )),
                        onTap: () {
                          calculateResult();
                          showDialog<void>(
                              context: context, // user must tap button!
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: Text(
                                      'Result',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 25),
                                    ),
                                    content: Text(
                                        'You will probably get  (' +
                                            gradePresenter(result) +
                                            ')',
                                        style: TextStyle(fontSize: 18)),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text("Ok"),
                                      ),
                                    ]);
                              });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Card(
                            elevation: 8,
                            color: Theme.of(context).primaryColor,
                            child: Text(
                              'Add More Courses',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 28,
                              ),
                            )),
                        onTap: () {
                          if (items.length > 4) {
                            showDialog<void>(
                                context: context, // user must tap button!
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                      title: Text(
                                        'Error',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 25),
                                      ),
                                      content: Text(
                                          'You Are Trying To Add More Than Five Courses',
                                          style: TextStyle(fontSize: 18)),
                                      actions: <Widget>[
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("Ok"),
                                        ),
                                      ]);
                                });
                          } else {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return Container(
                                    color: Colors.white,
                                    child: SizedBox(
                                      height: 150,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 200,
                                                width: 100,
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                          'Enter the course code:'),
                                                      TextField(
                                                          autofillHints: [
                                                            'The course code'
                                                          ],
                                                          onChanged: (value) {
                                                            choosenCode = value;
                                                          })
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 200,
                                                width: 100,
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                          'Enter the course grade:'),
                                                      DropdownButton<dynamic>(
                                                          iconSize: 30,
                                                          items: grades,
                                                          value: choosenGrade,
                                                          onChanged: (value) {
                                                            setState(() =>
                                                                choosenGrade =
                                                                    value);
                                                          }),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: IconButton(
                                                      onPressed: (() {
                                                        setState(() {
                                                          items.add(CourseGrade(
                                                              choosenCode,
                                                              choosenGrade));
                                                        });
                                                        setStater();
                                                        Navigator.pop(context);
                                                      }),
                                                      icon: Icon(Icons.save)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                              },
                            );
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
