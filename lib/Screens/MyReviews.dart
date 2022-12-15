import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../API/APIClient.dart';

class MyReviews extends StatefulWidget {
  @override
  State<MyReviews> createState() => _MyReviewsState();
}

class _MyReviewsState extends State<MyReviews> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final TextEditingController eCtrl = new TextEditingController();
  List<dynamic> allreviews = [];
  void getStudentReviews() async {
    var res = await Provider.of<ApiClient>(context, listen: false)
        .getStudentReviews();

    setState(() {
      allreviews = res;
    });
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      getStudentReviews();

      super.initState();
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
      child: Text("Delete"),
      onPressed: () {
        Provider.of<ApiClient>(context, listen: false)
            .deletereview(allreviews[i]['id']);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => MyReviews()),
        // );
        Navigator.pop(context);
        Navigator.pop(context);
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
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        key: _key,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(
          children: [
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
                        trailing: Expanded(
                          child: IconButton(
                              color: Colors.red,
                              onPressed: () {
                                // Provider.of<ApiClient>(context,
                                //         listen: false)
                                //     .deletereview(
                                //         allreviews[index]['id']);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => MyReviews()),
                                // );
                                showAlertDialog(context, index);
                              },
                              icon: Icon(Icons.cancel,
                                  color: Theme.of(context).primaryColor)),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
