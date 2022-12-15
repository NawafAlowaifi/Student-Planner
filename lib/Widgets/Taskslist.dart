import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:student_planner/Widgets/EditSheet.dart';

import '../Providers/Tasks.dart';

class Taskslist extends StatefulWidget {
  final title;
  final date;
  final id;
  final time;
  Taskslist(
      {required this.title, required this.date, this.id, required this.time});

  @override
  State<Taskslist> createState() => _TaskslistState();
}

class _TaskslistState extends State<Taskslist> {
  bool notifications = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(227, 235, 237, 1),
      height: 50,
      child: ListTile(
        title: Text(widget.title,
            style: TextStyle(color: Theme.of(context).primaryColor)),
        leading: Text(
          widget.date + '\n ${widget.time}',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
