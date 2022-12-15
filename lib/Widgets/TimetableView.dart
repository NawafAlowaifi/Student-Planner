import 'package:flutter/material.dart';

import '../model/LaneEvents.dart';
import '../model/Utils.dart';
import 'LaneView.dart';
import '../Styles/TimeTableStyle.dart';
import 'TimeTableViewController.dart';

class TimetableView extends StatefulWidget {
  final List<LaneEvents> laneEventsList;
  final TimetableStyle timetableStyle;

  TimetableView({
    Key? key,
    required this.laneEventsList,
    this.timetableStyle: const TimetableStyle(),
  }) : super(key: key);

  @override
  _TimetableViewState createState() => _TimetableViewState();
}

class _TimetableViewState extends State<TimetableView>
    with TimetableViewController {
  @override
  void initState() {
    initController();
    super.initState();
  }

  @override
  void dispose() {
    disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildCorner(),
        _buildMainContent(context),
        _buildTimelineList(context),
        _buildLaneList(context),
      ],
    );
  }

  Widget _buildCorner() {
    return Positioned(
      left: 0,
      top: 0,
      child: SizedBox(
        width: widget.timetableStyle.timeItemWidth,
        height: widget.timetableStyle.laneHeight,
        child: DecoratedBox(
          decoration: BoxDecoration(color: widget.timetableStyle.cornerColor),
        ),
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: widget.timetableStyle.timeItemWidth,
        top: widget.timetableStyle.laneHeight,
      ),
      child: Container(
        width: 320,
        child: ListView(scrollDirection: Axis.horizontal,
            // horizontalPixelsStreamController: horizontalPixelsStream,
            // verticalPixelsStreamController: verticalPixelsStream,
            // onScroll: onScroll,
            // maxWidth:
            //     widget.laneEventsList.length * widget.timetableStyle.laneWidth,
            // maxHeight:
            //     (widget.timetableStyle.endHour - widget.timetableStyle.startHour) *
            //         widget.timetableStyle.timeItemHeight,
            children: [
              Row(
                children: widget.laneEventsList.map((laneEvents) {
                  return Container(
                    height: 550,
                    child: LaneView(
                      events: laneEvents.events,
                      timetableStyle: widget.timetableStyle,
                    ),
                  );
                }).toList(),
              ),
            ]),
      ),
    );
  }

  Widget _buildTimelineList(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: widget.timetableStyle.timeItemWidth,
      padding: EdgeInsets.only(top: widget.timetableStyle.laneHeight),
      color: widget.timetableStyle.timelineColor,
      child: Column(
        // physics: const ClampingScrollPhysics(),
        // controller: verticalScrollController,
        // scrollDirection: Axis.vertical,
        // shrinkWrap: true,
        children: [for (var i = 8; i < 19; i += 1) i].map((hour) {
          return Container(
            padding: EdgeInsets.only(left: 10),
            height: widget.timetableStyle.timeItemHeight,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: widget.timetableStyle.timelineBorderColor,
                  width: 0,
                ),
              ),
              color: widget.timetableStyle.timelineItemColor,
            ),
            child: Text(
              Utils.hourFormatter(hour, 0),
              style: TextStyle(
                color: widget.timetableStyle.timeItemTextColor,
              ),
              textAlign: TextAlign.center,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildLaneList(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      color: widget.timetableStyle.laneColor,
      height: widget.timetableStyle.laneHeight,
      padding: EdgeInsets.only(left: widget.timetableStyle.timeItemWidth),
      child: Row(
        // scrollDirection: Axis.horizontal,
        // physics: const ClampingScrollPhysics(),
        // controller: horizontalScrollController,
        // shrinkWrap: true,
        children: widget.laneEventsList.map((laneEvents) {
          return Container(
            width: 65,
            height: 70,
            color: laneEvents.lane.backgroundColor,
            child: Center(
              child: Text(
                laneEvents.lane.name,
                style: laneEvents.lane.textStyle,
                textAlign: TextAlign.center,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
