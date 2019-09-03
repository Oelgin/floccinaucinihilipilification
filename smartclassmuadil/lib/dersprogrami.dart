import 'dart:async';
import 'dart:io';

import 'package:fix/assets.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'main.dart';

final titleCont = new TextEditingController();
final feedbackCont = new TextEditingController();

class Dersprogrami extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DersprogramiState();
  }
}

class _DersprogramiState extends State<Dersprogrami> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Classes",
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
            ]),
        body: SingleChildScrollView(
            child: Container(
                width: 414,
                height: 736,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage('images/background.png'),
                  fit: BoxFit.fill,
                ),
              ),
                child: Stack(children: [
                  // link
                  PositionedDirectional(
                    top: 20,
                    start: 30,
                    child: ClassesInfoAsset())])),
        ),
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
                        leading: new Icon(Icons.border_color),
                        title: Text('Homeworks',
                            style: TextStyle(
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/homeworks');
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.add_comment),
                        title: Text('Feedback Box',
                            style: TextStyle(
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/feedback');
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.arrow_back),
                        title: Text('Go back',
                            style: TextStyle(
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/second');
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
                      ListTile(
                        leading: new Icon(Icons.restaurant),
                        title: Text('Meals',
                            style: TextStyle(
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/meals');
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.book),
                        title: Text('Grades',
                            style: TextStyle(
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/grades');
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.announcement),
                        title: Text('Announcements',
                            style: TextStyle(
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/announcements');
                        },
                      ),      
                      ListTile(
                        leading: new Icon(Icons.spellcheck),
                        title: Text('Attendance Info',
                            style: TextStyle(
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/attendance');
                        },
                      ),
                    ],
                  ),
                ))));
  }
}
