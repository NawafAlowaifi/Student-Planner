import 'package:flutter/material.dart';

import 'TableEventTime.dart';

class TableEvent {
  final String title;

  final TableEventTime start;

  final TableEventTime end;

  final EdgeInsets padding;

  final EdgeInsets? margin;

  final VoidCallback? onTap;

  final BoxDecoration? decoration;

  final Color backgroundColor;

  final TextStyle textStyle;

  TableEvent({
    required this.title,
    required this.start,
    required this.end,
    this.padding: const EdgeInsets.all(10),
    this.margin,
    this.onTap,
    this.decoration,
    this.backgroundColor: const Color(0xCC2196F3),
    this.textStyle: const TextStyle(color: Colors.white),
  }) : assert(end.isAfter(start));
}
