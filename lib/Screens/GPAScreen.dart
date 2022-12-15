// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

import '../Widgets/constants.dart';
import '../Widgets/leccture_list.dart';
import '../Widgets/show_gpa.dart';
import '../model/lectureGPA.dart';

class GPAScreen extends StatefulWidget {
  const GPAScreen({Key? key}) : super(key: key);

  @override
  State<GPAScreen> createState() => _GPAScreenState();
}

class _GPAScreenState extends State<GPAScreen> {
  var formKey = GlobalKey<FormState>();
  double chosenGrade = 5;
  double chosenCredit = 1;
  String lectureName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('GPA'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: _buildForm(),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: _buildLetterDrop(),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: _buildCreditDrops(),
                          ),
                        ),
                        IconButton(
                          onPressed: _calculate,
                          icon: Icon(Icons.arrow_forward_ios_rounded),
                          color: Theme.of(context).primaryColor,
                          iconSize: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: ShowGpa(
                    gpa: Constants.calculateGpa(),
                    lectureCount: Constants.lectures.length,
                  )),
            ],
          ),
          Expanded(
            child: LectureList(
              onDismiss: (i) {
                Constants.lectures.removeAt(i);
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: TextFormField(
        validator: (name) {
          if (name!.isEmpty) {
            return "Please enter name of the lecture!";
          } else {
            return null;
          }
        },
        onSaved: (name) {
          lectureName = name!;
        },
        decoration: InputDecoration(
          hintText: "e.g. Calculus I",
          // border: Constants.borderRadius,
          filled: true,
          fillColor: Constants.mainColor.shade100.withOpacity(0.2),
        ),
      ),
    );
  }

  Widget _buildLetterDrop() {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Constants.mainColor.shade100.withOpacity(0.3),
          ),
          child: DropdownButton(
            elevation: 16,
            iconEnabledColor: Constants.mainColor.shade200,
            value: chosenGrade,
            items: Constants.grades(),
            onChanged: (double? grade) {
              setState(() {
                chosenGrade = grade!;
              });
            },
            underline: Container(),
          ),
        ),
      ],
    );
  }

  Widget _buildCreditDrops() {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Constants.mainColor.shade100.withOpacity(0.3),
          ),
          child: DropdownButton(
            elevation: 16,
            iconEnabledColor: Constants.mainColor.shade200,
            value: chosenCredit,
            items: Constants.credits(),
            onChanged: (double? credit) {
              setState(() {
                chosenCredit = credit!;
              });
            },
            underline: Container(),
          ),
        ),
      ],
    );
  }

  _calculate() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var lecture = Lecture(
        name: lectureName,
        grade: chosenGrade,
        credit: chosenCredit,
      );
      Constants.addLecture(lecture);
      setState(() {
        formKey.currentState!.reset();
      });
    }
  }
}
