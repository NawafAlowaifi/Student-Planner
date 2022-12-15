import 'package:flutter/material.dart';

import '../model/course.dart';
import './add_course_info_screen.dart';

class viewCoursesAdminScreen extends StatefulWidget {
  static const routeName = '/viewCourseAdmin';
  static void addNewTransaction(
      String txTitle, String txAmount, int chosenDate) {
    final newTx = Courses(
      courseCode: txTitle,
      courseName: txAmount,
      creditHours: chosenDate,
    );
  }

  @override
  State<viewCoursesAdminScreen> createState() => _viewCoursesAdminScreenState();
}

class _viewCoursesAdminScreenState extends State<viewCoursesAdminScreen> {
  TextEditingController editingController = TextEditingController();
  late Courses newTx;

  final List<Courses> coursesList = [
    Courses(
        courseCode: 'SWE 466',
        courseName: 'Software Project Management',
        creditHours: 3),
    Courses(
        courseCode: 'SWE 497',
        courseName: 'Graduation Project II',
        creditHours: 3),
    Courses(
        courseCode: 'SWE 455',
        courseName: 'Software Maintenance and Evolution',
        creditHours: 2),
    Courses(
        courseCode: 'OPER 122',
        courseName: 'Introduction to Operations Research',
        creditHours: 3),
    Courses(
        courseCode: 'MATH 203',
        courseName: 'DIFFERENTIAL & INTEGRAL CALCULUS',
        creditHours: 3),
    Courses(
        courseCode: 'MATH 203',
        courseName: 'DIFFERENTIAL & INTEGRAL CALCULUS',
        creditHours: 3),
    Courses(
        courseCode: 'MATH 203',
        courseName: 'DIFFERENTIAL & INTEGRAL CALCULUS',
        creditHours: 3),
  ];
  var items = <Courses>[];

  @override
  void initState() {
    items.addAll(coursesList);
    super.initState();
  }

  late List<Courses> tempList;
  bool x = false;

  void filterSearchResults(String query) {
    List<Courses> searchList = <Courses>[];
    searchList.addAll(items);
    if (query.isNotEmpty) {
      List<Courses> coursesList1 = <Courses>[];
      searchList.forEach((item) {
        if (item.courseCode.toLowerCase().contains(query.toLowerCase())) {
          coursesList1.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(coursesList1);
      });
      return;
    } else if (x) {
      setState(() {
        items.clear();
        items.addAll(tempList);
      });
    } else {
      setState(() {
        items.clear();
        items.addAll(coursesList);
      });
    }
  }

  String choosenCourseCode = '';
  String choosenCourseName = '';
  int choosenCridetHours = 0;

  // Widget BuildAddCours(BuildContext context) {
  //   return Scaffold(
  //     body: Column(
  //       children: [Text('data')],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('View Courses'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value) {
                        filterSearchResults(value);
                      },
                      controller: editingController,
                      decoration: InputDecoration(
                          labelText: "Search",
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)))),
                    ),
                  ),
                  SingleChildScrollView(
                    child: SizedBox(
                      height: 500,
                      width: 400,
                      child: Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                                height: 100,
                                width: 200,
                                child: InkWell(
                                    onTap: () {
                                      // Navigator.of(context).push(
                                      //   MaterialPageRoute(
                                      //     builder: (BuildContext context) {
                                      //       return addCourseInfoScreen(
                                      //           coursesList[index]);
                                      //     },
                                      //   ),
                                      // );
                                    },
                                    child: Card(
                                        child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue),
                                            child: Center(
                                              child: Card(
                                                elevation: 0,
                                                color: Colors.blue,
                                                child: Text(
                                                  '${items[index].courseCode}',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Column(
                                              children: [
                                                Card(
                                                  elevation: 0,
                                                  child: SizedBox(
                                                    width: 220,
                                                    child: Text(
                                                      '${items[index].courseName}',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                ),
                                                Card(
                                                  elevation: 0,
                                                  child: Text(
                                                      'credit Hours: ${items[index].creditHours}',
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12)),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 50,
                                            width: 50,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 10, 10, 10),
                                              child: IconButton(
                                                iconSize: 30,
                                                icon: Icon(Icons.delete),
                                                onPressed: () => {
                                                  setState(() {
                                                    items.removeWhere(
                                                        (element) =>
                                                            element ==
                                                            items[index]);
                                                    tempList = [...items];
                                                    x = true;
                                                  })
                                                },
                                                color: Colors.blue,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ))));
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Enter the course code:'),
                                TextField(
                                  autofillHints: ['The course code'],
                                  onChanged: (value) =>
                                      choosenCourseCode = value.toUpperCase(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('Enter the course name:'),
                                TextField(
                                  autofillHints: ['The course name'],
                                  onChanged: (value) =>
                                      choosenCourseName = value,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('Enter the cridet hours:'),
                                TextField(
                                  keyboardType: TextInputType.number,
                                  autofillHints: ['The cridet hours'],
                                  onChanged: (value) =>
                                      choosenCridetHours = int.parse(value),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: (() {
                            setState(() {
                              items.add(Courses(
                                  courseCode: choosenCourseCode,
                                  courseName: choosenCourseName,
                                  creditHours: choosenCridetHours));
                              Navigator.pop(context);
                            });
                          }),
                          icon: Icon(Icons.save)),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      // courseCode: 'SWE 466',
      //   courseName: 'Software Project Management',
      //   creditHours: 3
    );
  }
}
