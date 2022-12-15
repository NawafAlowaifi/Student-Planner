import 'package:student_planner/Providers/Task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';
import '../Providers/Tasks.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

class PlanSheet extends StatefulWidget {
  @override
  State<PlanSheet> createState() => _PlanSheetState();
}

class _PlanSheetState extends State<PlanSheet> {
  final _titleController = TextEditingController();
  List<DropdownMenuItem> Majors = [
    DropdownMenuItem(child: Text('Software Engineering'), value: 0),
    DropdownMenuItem(child: Text('Computer Science'), value: 1),
    DropdownMenuItem(child: Text('Information Technology'), value: 2),
    DropdownMenuItem(child: Text('Computer Enigneering'), value: 3),
  ];
  int choosenMajor = 0;
  final _form = GlobalKey<FormState>();

  int counter = 0;

  Future<void> _saveForm() async {
    _form.currentState?.save();
    Navigator.pop(context, Majors[choosenMajor].child.toString().substring(6));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Major Plan'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveForm,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Text(
              'Major Plan',
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 16),
            ),
            SizedBox(
              width: 100,
            ),
            DropdownButton<dynamic>(
                dropdownColor: Theme.of(context).accentColor,
                style: TextStyle(color: Theme.of(context).primaryColor),
                items: Majors,
                value: choosenMajor,
                onChanged: (value) {
                  setState(
                    () {
                      choosenMajor = value;
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
