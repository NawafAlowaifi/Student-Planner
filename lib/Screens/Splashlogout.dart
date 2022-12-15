import 'package:flutter/material.dart';

import 'package:student_planner/Screens/TabsScreen.dart';
import 'package:student_planner/Screens/auth_screen.dart';

class SplashScreenlogout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenlogout();
  }
}

class _SplashScreenlogout extends State<SplashScreenlogout> {
  int splashtime = 2;
  // duration of splash screen on second

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
          //pushReplacement = replacing the route so that
          //splash screen won't show on back button press
          //navigation to Home page.
          builder: (context) {
        return AuthScreen();
      }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
            alignment: Alignment.center,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                //vertically align center
                children: <Widget>[
                  Container(
                    child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Center(
                          child: Center(
                              child: Image.network(
                                  'https://identity.ksu.edu.sa/sites/identity.ksu.edu.sa/files/imce_images/logo_9_0.png')),
                        )),
                  ),
                ])));
  }
}
