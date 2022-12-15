import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Tasks.dart';
import '../Widgets/AddSheet.dart';
import '../Widgets/ButtomNavigationBar.dart';
import '../Widgets/Drawer.dart';
import '../Widgets/EditSheet.dart';
import '../Widgets/Taskslist.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  void editsheet(BuildContext ctx, int index) {
    showModalBottomSheet(
        context: ctx,
        builder: (btx) {
          return EditSheet(index);
        });
  }

  int counter = 0;
  int _selectedIndex = 0;
  void sheet(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (btx) {
          return AddSheet();
        });
  }

  int count() {
    return counter++;
  }

  var result = Tasks().tasks.map((item) {
    return item;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            sheet(context);
          },
          child: Icon(
            Icons.add,
            color: Theme.of(context).accentColor,
          )),
      // appBar: AppBar(
      //   leading: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: Icon(
      //       Icons.arrow_back_rounded,
      //     ),
      //   ),
      // ),
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: Provider.of<Tasks>(context).tasks.length == 0
          ? Center(
              child: Text(
                "Empty",
                style: Theme.of(context).textTheme.headline6,
              ),
            )
          : ListView.builder(
              itemCount: Provider.of<Tasks>(context).tasks.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    editsheet(context, index);
                  },
                  child: Dismissible(
                    direction: DismissDirection.endToStart,
                    key: UniqueKey(),
                    onDismissed: (direction) {
                      setState(() {
                        Provider.of<Tasks>(context, listen: false)
                            .tasks
                            .removeAt(index);
                      });
                    },
                    background: Container(
                      color: Colors.red,
                      child: Icon(Icons.delete),
                      alignment: Alignment.centerRight,
                    ),
                    child: Taskslist(
                      title: Provider.of<Tasks>(context).tasks[index].title,
                      date: Provider.of<Tasks>(context).tasks[index].date,
                      id: Provider.of<Tasks>(context).tasks[index].id,
                      time: Provider.of<Tasks>(context).tasks[index].time,
                    ),
                  ),
                );
              })),
    );
  }
}
