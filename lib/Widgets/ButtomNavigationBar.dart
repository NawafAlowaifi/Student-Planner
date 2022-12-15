import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Screens/MainScreen.dart';
import '../Screens/TaskScreen.dart';

class ButtomNavigationBar extends StatefulWidget {
 

  @override
  State<ButtomNavigationBar> createState() => _ButtomNavigationBarState();
}

class _ButtomNavigationBarState extends State<ButtomNavigationBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 20,
      currentIndex: _selectedIndex,
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );

            break;
          case 1:
            //  Navigator.push(
            //               context,
            //               MaterialPageRoute(builder: (context) => ScheduleScreen()),
            //             );
            break;
          case 2:
            //  Navigator.push(
            //               context,
            //               MaterialPageRoute(builder: (context) => PlanScreen()),
            //             );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TaskScreen()),
            );
            break;
        }
        setState(
          () {
            _selectedIndex = index;
          },
        );
        ;
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: 'Plan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note),
          label: 'Tasks',
        )
      ],
    );
  }
}
