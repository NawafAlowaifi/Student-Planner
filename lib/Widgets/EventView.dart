import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:student_planner/Screens/CourseReviewScreen.dart';

import '../model/TableEvent.dart';
import '../model/Utils.dart';
import '../Styles/TimeTableStyle.dart';

class EventView extends StatelessWidget {
  final TableEvent event;
  final TimetableStyle timetableStyle;

  const EventView({
    Key? key,
    required this.event,
    required this.timetableStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top(),
      height: height(),
      left: 0,
      width: 65,
      child: GestureDetector(
        onTap: (() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CourseReview()),
          );

          event.onTap;
        }),
        child: Container(
          decoration:
              event.decoration ?? (BoxDecoration(color: event.backgroundColor)),
          margin: event.margin,
          padding: event.padding,
          child: (Utils.eventText)(
            event,
            context,
            math.max(
                0.0, height() - (event.padding.top) - (event.padding.bottom)),
            math.max(
                0.0,
                timetableStyle.laneWidth -
                    (event.padding.left) -
                    (event.padding.right)),
          ),
        ),
      ),
    );
  }

  double top() {
    return calculateTopOffset(event.start.hour, event.start.minute,
            timetableStyle.timeItemHeight) -
        timetableStyle.startHour * timetableStyle.timeItemHeight;
  }

  double height() {
    return calculateTopOffset(0, event.end.difference(event.start).inMinutes,
            timetableStyle.timeItemHeight) +
        1;
  }

  double calculateTopOffset(
    int hour, [
    int minute = 0,
    double? hourRowHeight,
  ]) {
    return (hour + (minute / 60)) * (hourRowHeight ?? 60);
  }
}
