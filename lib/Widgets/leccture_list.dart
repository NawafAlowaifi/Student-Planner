import 'package:flutter/material.dart';

import 'constants.dart';

class LectureList extends StatelessWidget {
  final Function onDismiss;
  const LectureList({required this.onDismiss, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Constants.lectures.isNotEmpty
        ? Container(
            child: ListView.builder(
                itemCount: Constants.lectures.length,
                itemBuilder: (context, i) {
                  return Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      onDismiss(i);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Constants.mainColor,
                              child: Text((Constants.lectures[i].credit *
                                      Constants.lectures[i].grade)
                                  .toStringAsFixed(0))),
                          title: Text(Constants.lectures[i].name),
                          subtitle: Text(
                              "Credit: ${Constants.lectures[i].credit.toInt()}, Grade: ${Constants.lectures[i].grade}"),
                        ),
                      ),
                    ),
                  );
                }),
          )
        : Center(
            child: Text(
              "Plese add lecture",
              // style: Constants.titleStyle,
            ),
          );
  }
}
