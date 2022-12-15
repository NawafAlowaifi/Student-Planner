import 'package:flutter/cupertino.dart';

import 'constants.dart';

class ShowGpa extends StatelessWidget {
  final double gpa;
  final int lectureCount;
  const ShowGpa({required this.gpa, required this.lectureCount, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          lectureCount > 0 ? "$lectureCount lectures added" : "add lecture",
          // style: Constants.gpaBodyStyle,
          textAlign: TextAlign.center,
        ),
        Text(
          gpa >= 0 ? gpa.toStringAsFixed(2) : "0.0",
          // style: Constants.gpaStyle,
        ),
        Text(
          "GPA",
          // style: Constants.gpaBodyStyle,
        ),
      ],
    );
  }
}
