import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum day { Sunday, Monday, Tuesday, Wednesday, Thursday }

class lecture {
  String section;
  List<Map<day, TimeOfDay>> lectures;
  lecture(@required this.section, @required this.lectures);
}
