import 'package:flutter/material.dart';
import 'package:student_planner/Screens/MainScreen.dart';
import 'package:student_planner/Screens/TaskScreen.dart';
import 'package:calendar_view/src/calendar_controller_provider.dart';

import 'GPAScreen.dart';
import 'PlanScreen.dart';
import 'ScheduleScreen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Widget>> _pages = [];
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': MainScreen(),
        // 'title': 'MainScreen',
      },
      {
        'page': ScheduleScreen(),
        // 'title': 'TaskScreen',
      },
      {
        'page': PlanScreen(),
        // 'title': 'MainScreen',
      },
      {
        'page': TaskScreen(),
        // 'title': 'MainScreen',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_pages[_selectedPageIndex]['title'].toString()),
      // ),
      // drawer: Drawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart_rounded),
            label: 'Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'Tasks',
          )
        ],
      ),
    );
  }
}
