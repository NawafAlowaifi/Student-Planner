import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_planner/Widgets/AdminDrawer.dart';

import '../API/APIClient.dart';

class AllReviewsScreen extends StatefulWidget {
  @override
  State<AllReviewsScreen> createState() => _AllReviewsScreenState();
}

class _AllReviewsScreenState extends State<AllReviewsScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final TextEditingController eCtrl = new TextEditingController();
  List<dynamic> allreviews = [];
  void getStudentReviews() async {
    var res = await Provider.of<ApiClient>(context, listen: false)
        .getallreviewsadmin();

    setState(() {
      allreviews = res;
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
      child: Text("Block"),
      onPressed: () {
        Provider.of<ApiClient>(context, listen: false)
            .Blockuser(allreviews[i]['student']['id']);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AllReviewsScreen()),
        );
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Block user: " + allreviews[i]['student']['email']),
      content: Text("Would you like to Block This user ?"),
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

  showAlertDialog2(BuildContext context, int i) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Delete"),
      onPressed: () {
        Provider.of<ApiClient>(context, listen: false)
            .deletereview(allreviews[i]['id']);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => MyReviews()),
        // );
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AllReviewsScreen()),
        );
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Delete Review: " + allreviews[i]['comment']),
      content: Text("Would you like to Delete This Review ?"),
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
      getStudentReviews();

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
                  itemCount: allreviews.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      color: Theme.of(context).accentColor,
                      child: ListTile(
                        title: Text(
                          allreviews[index]['course']['code'],
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          allreviews[index]['comment'],
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        leading: SizedBox.fromSize(
                          size: Size(90, 90),
                          child: Material(
                            color: Theme.of(context).accentColor,
                            child: InkWell(
                              onTap: () {
                                showAlertDialog(context, index);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.block,
                                    color: Colors.red,
                                  ), // <-- Icon
                                  Text(
                                    allreviews[index]['student']['email'],
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Theme.of(context).primaryColor),
                                  ), // <-- Text
                                ],
                              ),
                            ),
                          ),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              showAlertDialog2(context, index);
                            },
                            icon: Icon(Icons.cancel,
                                color: Theme.of(context).primaryColor)),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
