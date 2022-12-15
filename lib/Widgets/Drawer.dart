import 'package:flutter/material.dart';
import 'package:student_planner/Screens/GPAScreen.dart';
import 'package:student_planner/Screens/ManageReviewsScreen.dart';

import '../Screens/TaskScreen.dart';
import '../Screens/settings_screen.dart';
import '../Screens/view_courses_screen.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/3177/3177440.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 45),
                    child: Container(
                      width: 150,
                      height: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Text('Nawaf Alowaifi',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 18)),
                          ),
                          SizedBox(height: 9),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                    DateTime.now().toString().substring(0, 10),
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            height: 72,
            child: ListTile(
              leading: Container(
                  width: 21,
                  height: 21,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(125, 216, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(0, 146, 236, 1),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(21, 21)),
                  )),
              title: Text('View Courses',
                  style: Theme.of(context).textTheme.headline6),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => viewCoursesScreen()),
                )
              },
            ),
          ),
          Container(
            height: 72,
            child: ListTile(
              leading: Container(
                  width: 21,
                  height: 21,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(125, 216, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(0, 146, 236, 1),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(21, 21)),
                  )),
              title: Text('GPA', style: Theme.of(context).textTheme.headline6),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GPAScreen()),
                )
              },
            ),
          ),
          Container(
            height: 72,
            child: ListTile(
              leading: Container(
                  width: 21,
                  height: 21,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(125, 216, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(0, 146, 236, 1),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(21, 21)),
                  )),
              title:
                  Text('Reviews', style: Theme.of(context).textTheme.headline6),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageReviews()),
                )
              },
            ),
          ),
          // Container(
          //   height: 72,
          //   child: ListTile(
          //     leading: Icon(Icons.circle, color: Theme.of(context).accentColor),
          //     title: Text('Predict grade',
          //         style: Theme.of(context).textTheme.headline6),
          //     onTap: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ),
          Container(
            height: 72,
            child: ListTile(
              leading: Container(
                  width: 21,
                  height: 21,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(125, 216, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(0, 146, 236, 1),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(21, 21)),
                  )),
              title: Text('Settings',
                  style: Theme.of(context).textTheme.headline6),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
                // Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
