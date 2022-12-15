import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:student_planner/Screens/view_courses_screen.dart';
import 'package:student_planner/Widgets/Drawer.dart';

import '../Styles/TimeTableStyle.dart';
import '../Widgets/TimetableView.dart';

import '../model/Lane.dart';
import '../model/LaneEvents.dart';
import '../model/TableEvent.dart';
import '../model/TableEventTime.dart';

// import '../extension.dart';
import 'package:calendar_view/src/calendar_controller_provider.dart';

import '../model/event.dart';

// import '../widgets/week_view_widget.dart';
// import 'create_event_page.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  late TableEvent newev = TableEvent(
    title: 'An event 1',
    start: TableEventTime(hour: 8, minute: 0),
    end: TableEventTime(hour: 9, minute: 0),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      // floatingActionButton: FloatingActionButton(
      //     backgroundColor: Theme.of(context).primaryColor,
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => AppointmentEditor()),
      //       ).then((value) {
      //         setState(() {
      //           newev = value;
      //         });
      //       });
      //     },
      //     child: Icon(
      //       Icons.add,
      //       color: Theme.of(context).accentColor,
      //     )),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => viewCoursesScreen()),
                );
              },
              icon: Icon(Icons.add))
        ],
        title: Text('Schedule'),
      ),
      body: TimetableView(
        laneEventsList: _buildLaneEvents(),
        timetableStyle: TimetableStyle(),
      ),
    );
  }

  List<LaneEvents> _buildLaneEvents() {
    return [
      LaneEvents(
        lane: Lane(name: 'Sun'),
        events: [
          TableEvent(
            title: 'An event 1',
            start: TableEventTime(hour: 8, minute: 0),
            end: TableEventTime(hour: 9, minute: 0),
          ),
          newev
        ],
      ),
      LaneEvents(
        lane: Lane(name: 'Mon'),
        events: [
          // TableEvent(
          //   title: 'An event 3',
          //   start: TableEventTime(hour: 10, minute: 10),
          //   end: TableEventTime(hour: 11, minute: 45),
          // ),
        ],
      ),
      LaneEvents(
        lane: Lane(name: 'Tue'),
        events: [
          // TableEvent(
          //   title: 'An event 3',
          //   start: TableEventTime(hour: 10, minute: 10),
          //   end: TableEventTime(hour: 11, minute: 45),
          // ),
        ],
      ),
      LaneEvents(
        lane: Lane(name: 'Wed'),
        events: [
          // TableEvent(
          //   title: 'An event 3',
          //   start: TableEventTime(hour: 10, minute: 10),
          //   end: TableEventTime(hour: 11, minute: 45),
          // ),
        ],
      ),
      LaneEvents(
        lane: Lane(name: 'Thu'),
        events: [
          // TableEvent(
          //   title: 'An event 3',
          //   start: TableEventTime(hour: 10, minute: 10),
          //   end: TableEventTime(hour: 11, minute: 45),
          // ),
        ],
      ),
      // LaneEvents(
      //   lane: Lane(name: 'Fri'),
      //   events: [
      //     // TableEvent(
      //     //   title: 'An sa',
      //     //   start: TableEventTime(hour: 0, minute: 10),
      //     //   end: TableEventTime(hour: 2, minute: 45),
      //     // ),
      //     // TableEvent(
      //     //   title: 'An event 3',
      //     //   start: TableEventTime(hour: 8, minute: 10),
      //     //   end: TableEventTime(hour: 10, minute: 45),
      //     // ),
      //   ],
      // ),
      // LaneEvents(
      //   lane: Lane(name: 'Sat'),
      //   events: [
      //     // TableEvent(
      //     //   title: 'An event 3',
      //     //   start: TableEventTime(hour: 10, minute: 10),
      //     //   end: TableEventTime(hour: 11, minute: 45),
      //     // ),
      //   ],
      // )
    ];
  }
}
