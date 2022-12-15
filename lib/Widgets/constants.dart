import 'package:flutter/material.dart';

import '../model/lectureGPA.dart';

class Constants {
  static const MaterialColor mainColor = Colors.indigo;

  // static final TextStyle titleStyle = GoogleFonts.quicksand(
  //     fontSize: 24, fontWeight: FontWeight.w900, color: mainColor);

  // static final OutlineInputBorder borderRadius = OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none);

  // static final TextStyle gpaBodyStyle = GoogleFonts.quicksand(
  //   fontSize: 16,
  //   fontWeight: FontWeight.w600,
  //   color: mainColor,
  // );

  // static final TextStyle gpaStyle = GoogleFonts.quicksand(
  //   fontSize: 55,
  //   fontWeight: FontWeight.w600,
  //   color: mainColor,
  // );

  static List _gradeLetters() {
    return ["A+", "A", "B+", "B", "C+", "C", "D+", "D", "F"];
  }

  static double? _letterGrade(String letter) {
    switch (letter) {
      case "A+":
        return 5.0;
      case "A":
        return 4.75;
      case "B+":
        return 4.5;
      case "B":
        return 4;
      case "C+":
        return 3.5;
      case "C":
        return 3;
      case "D+":
        return 2.5;
      case "D":
        return 2;
      case "F":
        return 1;
    }
  }

  static List<DropdownMenuItem<double>>? grades() {
    return _gradeLetters()
        .map((e) => DropdownMenuItem(
              value: _letterGrade(e),
              child: Text(e),
            ))
        .toList();
  }

  static List<int> _creditNums() {
    return List.generate(10, (index) => index + 1);
  }

  static List<DropdownMenuItem<double>> credits() {
    return _creditNums()
        .map((e) => DropdownMenuItem(
              value: e.toDouble(),
              child: Text(e.toString()),
            ))
        .toList();
  }

  static List<Lecture> lectures = [];

  static void addLecture(Lecture lecture) {
    lectures.add(lecture);
  }

  static double calculateGpa() {
    double totalGrade = 0, totalCredit = 0;
    Constants.lectures.forEach((element) {
      totalGrade += element.credit * element.grade;
      totalCredit += element.credit;
    });

    return totalGrade / totalCredit;
  }
}
