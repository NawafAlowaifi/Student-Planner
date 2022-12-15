import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../API/APIClient.dart';
import 'EditSheet.dart';
import 'Taskslist.dart';

class ViewTasks extends StatefulWidget {
  @override
  State<ViewTasks> createState() => _ViewTasksState();
}

class _ViewTasksState extends State<ViewTasks> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      getalltasks();
      // items.addAll(coursesList);

      super.initState();
    });

    // TODO: implement initState
  }

  @override
  void didUpdateWidget(covariant ViewTasks oldWidget) {
    Future.delayed(Duration.zero, () {
      getalltasks();
      // items.addAll(coursesList);
      super.didUpdateWidget(oldWidget);
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

  int _counter = 0;
  String inc() {
    _counter++;
    return _counter.toString();
  }

  @override
  Widget build(BuildContext context) {
    return alltasks.length == 0
        ? Center(
            child: Text(
              "Empty",
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        : ListView.builder(
            itemCount: alltasks.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  editsheet(context, alltasks[index]['id']);
                  didUpdateWidget(ViewTasks());
                },
                child: Dismissible(
                  direction: DismissDirection.endToStart,
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    setState(() async {
                      Provider.of<ApiClient>(context, listen: false)
                          .DeleteTask(alltasks[index]['id']);
                      var res =
                          await Provider.of<ApiClient>(context, listen: false)
                              .getalltasks();
                      alltasks = res;
                    });
                  },
                  background: Container(
                    color: Colors.red,
                    child: Icon(Icons.delete),
                    alignment: Alignment.centerRight,
                  ),
                  child: Taskslist(
                    count: inc(),
                    title: alltasks[index]['title'].toString(),
                    date: alltasks[index]['date'].toString(),
                    time: alltasks[index]['time'].toString(),
                  ),
                ),
              );
            }));
  }
}
