import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:student_planner/Widgets/Profile.dart';

import '../Providers/Tasks.dart';
import '../Widgets/ButtomNavigationBar.dart';
import '../Widgets/Drawer.dart';
import '../Widgets/EditSheet.dart';
import '../Widgets/Taskslist.dart';
import 'TaskScreen.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/Main';
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  void editsheet(BuildContext ctx, int index) {
    showModalBottomSheet(
        context: ctx,
        builder: (btx) {
          return EditSheet(index);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Home'),
        leading: IconButton(
          onPressed: () => _key.currentState!.openDrawer(),
          icon: Icon(
            Icons.menu,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Profile(),
          SizedBox(
            height: 24,
          ),
          Container(
            width: 310,
            height: 40,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Today's Tasks",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 24),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            width: 310,
            height: 397,
            child: SingleChildScrollView(
                child: Container(
              width: 310,
              height: 397,
              child: Provider.of<Tasks>(context).tasks.length == 0
                  ? Center(
                      child: Text(
                      'Empty',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 24),
                    ))
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
                              child: Provider.of<Tasks>(context)
                                          .tasks[index]
                                          .date ==
                                      DateFormat("yyyy-MM-dd")
                                          .format(DateTime.now())
                                  ? Taskslist(
                                      title: Provider.of<Tasks>(context)
                                          .tasks[index]
                                          .title,
                                      date: Provider.of<Tasks>(context)
                                          .tasks[index]
                                          .date,
                                      id: Provider.of<Tasks>(context)
                                          .tasks[index]
                                          .id,
                                      time: Provider.of<Tasks>(context)
                                          .tasks[index]
                                          .time,
                                    )
                                  : SizedBox(
                                      width: 0,
                                      height: 0,
                                    )),
                        );
                      })),
            )),
          )
        ],
      ),
    );
  }
}
