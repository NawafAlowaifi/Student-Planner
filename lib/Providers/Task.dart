import 'package:flutter/material.dart';

class Task with ChangeNotifier {
  final title;
  final date;
  final id;
  final time;
  Task({required this.time, required this.id, this.title, this.date});
}
