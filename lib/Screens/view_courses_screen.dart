import 'package:flutter/material.dart';
import 'package:student_planner/Widgets/ButtomNavigationBar.dart';

import '../model/course.dart';
import './add_course_info_screen.dart';

class viewCoursesScreen extends StatefulWidget {
  static const routeName = '/viewCourse';
  @override
  State<viewCoursesScreen> createState() => _viewCoursesScreenState();
}

class _viewCoursesScreenState extends State<viewCoursesScreen> {
  TextEditingController editingController = TextEditingController();
  static const routeName = '/viewCourse';

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

  void filterSearchResults(String query) {
    List<Courses> searchList = <Courses>[];
    searchList.addAll(coursesList);
    if (query.isNotEmpty) {
      List<Courses> coursesList = <Courses>[];
      searchList.forEach((item) {
        if (item.courseCode.toLowerCase().contains(query.toLowerCase())) {
          coursesList.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(coursesList);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(coursesList);
      });
    }
  }

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
                      height: 600,
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
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) {
                                            return addCourseInfoScreen(
                                                coursesList[index]);
                                          },
                                        ),
                                      );
                                    },
                                    child: Card(
                                        child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                                                  icon: Icon(Icons.add),
                                                  onPressed: () => {},
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
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
    );
  }
}
