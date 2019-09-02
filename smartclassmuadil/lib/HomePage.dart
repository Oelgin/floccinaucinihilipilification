import 'package:flutter/material.dart';
import 'main.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home",
              style: TextStyle(
                fontFamily: "Futura",
                fontStyle: FontStyle.normal,
              )),
              actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/second');
              },
            ),
              ]
        ),
        body: Center(),
        drawer: SizedBox(
            width: 250,
            child: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors
                      .blue, //This will change the drawer background to blue.
                  //other styles
                ),
                child: Drawer(
                  child: ListView(
                    // Important: Remove any padding from the ListView.
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      SizedBox(
                          height: 85,
                          child: DrawerHeader(
                              decoration: BoxDecoration(color: Colors.white),
                              child: Text(
                                'Menu',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Futura",
                                  fontStyle: FontStyle.normal,
                                  color: Colors.blue,
                                  fontSize: 20,
                                ),
                              ))),
                      ListTile(
                        leading: new Icon(Icons.add_comment),
                        title: Text('Feedback Box',
                            style: TextStyle(
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                            )),
                        onTap: () {
                          Navigator.pushNamed(context, '/second');
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.cancel),
                        title: Text('Sign Out',
                            style: TextStyle(
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                      ),
                    ],
                  ),
                ))));
  }
}
