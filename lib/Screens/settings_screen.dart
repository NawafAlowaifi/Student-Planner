import 'package:flutter/material.dart';
import '../Widgets/Drawer.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  bool notifications = false;
  List<DropdownMenuItem> weeks = [
    DropdownMenuItem(child: Text('1'), value: 1),
    DropdownMenuItem(child: Text('2'), value: 2),
    DropdownMenuItem(child: Text('3'), value: 3),
    DropdownMenuItem(child: Text('4'), value: 4),
    DropdownMenuItem(child: Text('5'), value: 5),
    DropdownMenuItem(child: Text('6'), value: 6),
    DropdownMenuItem(child: Text('7'), value: 7),
    DropdownMenuItem(child: Text('8'), value: 8),
    DropdownMenuItem(child: Text('9'), value: 9),
    DropdownMenuItem(child: Text('10'), value: 10),
    DropdownMenuItem(child: Text('11'), value: 11),
    DropdownMenuItem(child: Text('12'), value: 12),
    DropdownMenuItem(child: Text('13'), value: 13),
    DropdownMenuItem(child: Text('14'), value: 14),
    DropdownMenuItem(child: Text('15'), value: 15),
    DropdownMenuItem(child: Text('16'), value: 16),
    DropdownMenuItem(child: Text('17'), value: 17),
    DropdownMenuItem(child: Text('18'), value: 18),
  ];
  int choosenWeeks = 18;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      // drawer: NavDrawer(),
      body: Column(children: [
        Container(
          height: 100,
          width: 600,
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () => {},
            child: Card(
                child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3177/3177440.png'),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Nawaf Alowaifi',
                        style: Theme.of(context).textTheme.headline6,
                      )),
                ],
              ),
            )),
          ),
        ),
        Container(
          height: 100,
          width: 600,
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Theme.of(context).primaryColor,
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Weeks',
                      style: TextStyle(
                          color: Theme.of(context).accentColor, fontSize: 16),
                    )),
                SizedBox(
                  width: 230,
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: DropdownButton<dynamic>(
                        dropdownColor: Theme.of(context).primaryColor,
                        style: TextStyle(color: Theme.of(context).accentColor),
                        items: weeks,
                        value: choosenWeeks,
                        onChanged: (value) => {
                              setState(
                                () {
                                  choosenWeeks = value;
                                },
                              )
                            }),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 600,
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Theme.of(context).accentColor,
            child: SwitchListTile(
              activeColor: Theme.of(context).primaryColor,
              value: notifications,
              title: Text(
                'Notifications',
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 16),
              ),
              onChanged: (newValue) {
                setState(
                  () {
                    notifications = newValue;
                  },
                );
              },
            ),
          ),
        ),
        Container(
          height: 100,
          width: 600,
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () => {},
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Theme.of(context).primaryColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'About us',
                      style: TextStyle(
                          color: Theme.of(context).accentColor, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child:
                        Icon(Icons.info, color: Theme.of(context).accentColor),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          width: 600,
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () => {},
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Theme.of(context).accentColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Rate us',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 240,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(
                      Icons.star,
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          width: 600,
          padding: EdgeInsets.all(10),
          child: Center(
            child: InkWell(
              onTap: () => {},
              child: Text(
                'Log out',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 40),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
