import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:student_planner/Screens/AllReviewsScreen.dart';
import 'package:student_planner/Screens/GPAScreen.dart';
import 'package:student_planner/Screens/ManageReviewsScreen.dart';

import '../API/APIClient.dart';
import '../Screens/BlockedUsersScreen.dart';
import '../Screens/ManageReviews.dart';
import '../Screens/MyReviews.dart';
import '../Screens/TaskScreen.dart';
import '../Screens/auth_screen.dart';
import '../Screens/settings_screen.dart';
import '../Screens/view_courses_admin_screen.dart';
import '../Screens/view_courses_screen.dart';

class AdminDrawer extends StatelessWidget {
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
                    padding: const EdgeInsets.only(left: 8, top: 45),
                    child: Container(
                      width: 150,
                      height: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Text('Admin',
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
                                    DateFormat.yMMMMd('en_US')
                                        .format(DateTime.now()),
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
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(21, 21)),
                  )),
              title: Text('View Courses',
                  style: Theme.of(context).textTheme.headline6),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ViewCourseScreenAdmin()),
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
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(21, 21)),
                  )),
              title: Text('All Reviews',
                  style: Theme.of(context).textTheme.headline6),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllReviewsScreen()),
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
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(21, 21)),
                  )),
              title: Text('Blocked Users',
                  style: Theme.of(context).textTheme.headline6),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BlockedUsersScreen()),
                )
              },
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            height: 100,
            width: 600,
            padding: EdgeInsets.all(10),
            child: Center(
              child: InkWell(
                onTap: () {
                  Provider.of<ApiClient>(context, listen: false).setId(0);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuthScreen()),
                  );
                },
                child: Text(
                  'Log out',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 40),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
