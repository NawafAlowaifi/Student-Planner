import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_planner/Providers/Tasks.dart';
import 'package:student_planner/Screens/TabsScreen.dart';
import 'package:student_planner/Screens/view_courses_screen.dart';
import 'package:student_planner/Widgets/ButtomNavigationBar.dart';

import 'Screens/MainScreen.dart';
import 'Screens/TaskScreen.dart';
import 'Screens/auth_screen.dart';
import 'Screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => Tasks()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryTextTheme: TextTheme(
                headline6: TextStyle(
                    color: Color.fromRGBO(0, 147, 237, 1), fontSize: 24),
                headline5: TextStyle(
                  color: Color.fromRGBO(214, 245, 255, 1),
                )),
            primaryColor: Color.fromRGBO(0, 147, 237, 1),
            accentColor: Color.fromRGBO(214, 245, 255, 1),
            textTheme: TextTheme(
                headline6: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor)),
            bottomAppBarTheme: BottomAppBarTheme(color: Colors.white),
          ),
          routes: {
            '/settings': (ctx) => SettingsScreen(),
            '/Main': (ctx) => MainScreen(),
            '/viewCourse': (ctx) => viewCoursesScreen()
          },
          home: TabsScreen()),
    );
  }
}
