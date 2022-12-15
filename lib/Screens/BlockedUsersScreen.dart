import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_planner/Widgets/AdminDrawer.dart';

import '../API/APIClient.dart';

class BlockedUsersScreen extends StatefulWidget {
  @override
  State<BlockedUsersScreen> createState() => _BlockedUsersScreenState();
}

class _BlockedUsersScreenState extends State<BlockedUsersScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final TextEditingController eCtrl = new TextEditingController();
  List<dynamic> BlockedUsers = [];
  void getBlockedUsers() async {
    var res =
        await Provider.of<ApiClient>(context, listen: false).getBlockedUsers();

    setState(() {
      BlockedUsers = res;
    });
  }

  showAlertDialog(BuildContext context, int i) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("UnBlock"),
      onPressed: () {
        Provider.of<ApiClient>(context, listen: false)
            .unBlockuser(BlockedUsers[i]['id']);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BlockedUsersScreen()),
        );
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("unblock user: " + BlockedUsers[i]['email']),
      content: Text("Would you like to unblock This user ?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      getBlockedUsers();

      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        key: _key,
        drawer: AdminDrawer(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(
          children: [
            // new TextField(
            //   decoration: InputDecoration(
            //     hintStyle: TextStyle(fontSize: 17),
            //     hintText: 'Enter review',
            //     suffixIcon: Icon(Icons.done),
            //     border: InputBorder.none,
            //     contentPadding: EdgeInsets.all(20),
            //   ),
            //   controller: eCtrl,
            //   onSubmitted: (text) {
            //     addreviewtocourse(text);
            //     // data.add(text); // Append Text to the list
            //     // eCtrl.clear(); // Clear the Text area
            //     setState(() {}); // Redraw the Stateful Widget
            //   },
            // ),
            Expanded(
              child: ListView.builder(
                  itemCount: BlockedUsers.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      color: Theme.of(context).accentColor,
                      child: ListTile(
                        title: Text(
                          BlockedUsers[index]['email'],
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              showAlertDialog(context, index);
                            },
                            icon: Icon(
                              Icons.lock_open,
                              color: Theme.of(context).primaryColor,
                            )),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
