import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:student_planner/Screens/TaskScreen.dart';

import 'PlanSheet.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String major = '';
  void sheet(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (ctx) {
          return PlanSheet();
        }).then((value) {
      setState(() {
        major = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
            ),
            child:
                // mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                // children: [*
                Container(
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/3177/3177440.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 165,
                    height: 18,
                    child: Text('Nawaf Alowaifi',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 165,
                    height: 18,
                    child: Text(major,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              sheet(context);
            },
            child: Icon(
              Icons.edit,
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
