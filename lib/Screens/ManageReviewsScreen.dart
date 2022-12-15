import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Widgets/Drawer.dart';

class ManageReviews extends StatefulWidget {
  @override
  State<ManageReviews> createState() => _ManageReviewsState();
}

class _ManageReviewsState extends State<ManageReviews> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<String> data = [
    "This course is very hard!!",
    "Fun course",
    "Fun course",
    "Fun course",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(),
        body: ListView.builder(
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
            }));
  }
}
