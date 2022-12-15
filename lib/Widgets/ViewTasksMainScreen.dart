import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:provider/provider.dart';
import 'package:student_planner/Screens/TabsScreen.dart';
import 'package:student_planner/Screens/TaskScreen.dart';
import 'package:student_planner/main.dart';

import '../API/APIClient.dart';
import 'EditSheet.dart';
import 'Taskslist.dart';

class ViewTasksMainScreen extends StatefulWidget {
  @override
  State<ViewTasksMainScreen> createState() => _ViewTasksMainScreenState();
}

class _ViewTasksMainScreenState extends State<ViewTasksMainScreen> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      getalltasks();

      super.initState();
    });
  }

  void editsheet(BuildContext ctx, int ID) {
    showModalBottomSheet(
        context: ctx,
        builder: (btx) {
          return EditSheet(ID);
        });
  }

  List<dynamic> alltasks = [];
  void getalltasks() async {
    var res =
        await Provider.of<ApiClient>(context, listen: false).getalltasks();

    setState(() {
      alltasks = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return alltasks.length == 0
        ? Center(
            child: Text(
              "Empty",
              style: Theme.of(context).textTheme.headline5,
            ),
          )
        : ListView.builder(
            itemCount: alltasks.length,
            itemBuilder: ((context, index) {
              return alltasks[index]['date'].toString().contains(DateTime.now()
                      .toIso8601String()
                      .substring(0, 10)
                      .toString())
                  ? GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => TabsScreen()),
                        // );
                      },
                      child: Dismissible(
                        direction: DismissDirection.endToStart,
                        key: UniqueKey(),
                        onDismissed: (direction) {
                          setState(() async {
                            Provider.of<ApiClient>(context, listen: false)
                                .DeleteTask(alltasks[index]['id']);
                            var res = await Provider.of<ApiClient>(context,
                                    listen: false)
                                .getalltasks();
                            alltasks = res;
                          });
                        },
                        background: Container(
                          color: Colors.green,
                          child: Icon(Icons.done),
                          alignment: Alignment.centerRight,
                        ),
                        child: Taskslist(
                          count: (index + 1).toString(),
                          title: alltasks[index]['title'].toString(),
                          date: alltasks[index]['date'].toString(),
                          time: alltasks[index]['time'].toString(),
                        ),
                      ),
                    )
                  : SizedBox();
            }));
  }
}
