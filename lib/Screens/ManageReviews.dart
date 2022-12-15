import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_planner/Screens/TabsScreen.dart';

import '../API/APIClient.dart';
import 'CourseReviewScreen.dart';

class ManageReviews extends StatefulWidget {
  int courseid;
  ManageReviews(this.courseid);
  @override
  State<ManageReviews> createState() => _ManageReviewsState(courseid);
}

class _ManageReviewsState extends State<ManageReviews> {
  int courseid;
  _ManageReviewsState(this.courseid);
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<String> data = [];
  final TextEditingController eCtrl = TextEditingController();
  var _reviewController = TextEditingController();
  var review;
  @override
  void addreviewtocourse(String comment) {
    Provider.of<ApiClient>(context, listen: false).addreview(courseid, comment);
    Navigator.pop(context);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => TabsScreen(1)),
    // );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        key: _key,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            IconButton(
                onPressed: () {
                  addreviewtocourse(review);
                },
                icon: Icon(Icons.check))
          ],
          title: Text('Add a review'),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TabsScreen(1)),
                );
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Enter review'),
                controller: _reviewController,
                onChanged: (value) {
                  setState(() {
                    review = value;
                  });
                },
              ),
            ),
            // TextField(
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
            //   },
            // ),
            Expanded(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      color: Color.fromRGBO(214, 245, 255, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListTile(
                          title: Text(
                            data[index],
                            style: TextStyle(
                                color: Color.fromRGBO(0, 147, 237, 1),
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            data[index],
                            style: TextStyle(
                                color: Color.fromRGBO(0, 147, 237, 1),
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            width: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          data.removeAt(index);
                                        });
                                      },
                                      icon: Icon(
                                        Icons.cancel,
                                        color: Color.fromRGBO(0, 147, 237, 1),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
