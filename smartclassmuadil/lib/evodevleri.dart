import 'dart:async';
import 'dart:io';

import 'package:fix/assets.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'main.dart';

final titleCont = new TextEditingController();
final feedbackCont = new TextEditingController();

class Homeworks extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeworksState();
  }
}

class _HomeworksState extends State<Homeworks> {
  var _1opacity = 1.0;
    var _2opacity = 1.0;
    var _3opacity = 1.0;
    var _4opacity = 1.0;
    var _1opacityy = 0.0;
    var _2opacityy = 0.0;
    var _3opacityy = 0.0;
    var _4opacityy = 0.0;

  bool completion1 = false;
bool completion2 = false;
bool completion3 = false;
bool completion4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Homeworks",
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
            // background
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
                    start: 16,
                    child: LinkAsset()),
                  // infopart
                  PositionedDirectional(
                    top: 369,
                    start: 16,
                    child: InfoPartAsset(),
                  ),
                   // incompleted 3
                  PositionedDirectional(
                    top: 65.3,
                    start: 67,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 10,
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 10),
                          opacity: _3opacity,
                        child: Text("tamamlanmadı",
                            style: const TextStyle(
                                color: const Color(0xffff0000),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  )),
                  PositionedDirectional(
                    top: 65.3,
                    start: 67,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 10,
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 10),
                          opacity: _3opacityy,
                        child: Text("tamamlandı",
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  )),
                  PositionedDirectional(
                    top: 39.3,
                    start: 350,
                    child: Checkbox(
            value: completion3,
            onChanged: (bool value) {
                setState(() {
                    completion3 = value;
                    if (completion3 == true) {
                      _3opacity = 0.0;
                      _3opacityy = 1.0;
                    }
                    if (completion3 == false) {
                      _3opacity = 1.0;
                      _3opacityy = 0.0;
                    }
                });}),
                  ),
                  // incompleted1
                  PositionedDirectional(
                    top: 103.7,
                    start: 67,
                    child: AnimatedOpacity(
                          duration: Duration(milliseconds: 10),
                          opacity: _1opacity,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 10,
                        child: Text("tamamlanmadı",
                            style: const TextStyle(
                                color: const Color(0xffff0000),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  )),
                  PositionedDirectional(
                    top: 103.7,
                    start: 67,
                    child: AnimatedOpacity(
                          duration: Duration(milliseconds: 10),
                          opacity: _1opacityy,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 10,
                        child: Text("tamamlandı",
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  )),
                  PositionedDirectional(
                    top: 78.3,
                    start: 350,
                    child: Checkbox(
            value: completion1,
            onChanged: (bool value) {
                setState(() {
                    completion1 = value;
                    if (completion1 == true) {
                      _1opacity = 0.0;
                      _1opacityy = 1.0;
                    }
                    if (completion1 == false) {
                      _1opacity = 1.0;
                      _1opacityy = 0.0;
                    }
                });}),
                  ),
                  // incompleted 4
                  PositionedDirectional(
                    top: 138.3,
                    start: 67,
                    child: AnimatedOpacity(
                          duration: Duration(milliseconds: 10),
                          opacity: _4opacity,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 10,
                        child: Text("tamamlanmadı",
                            style: const TextStyle(
                                color: const Color(0xffff0000),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  )),
                  PositionedDirectional(
                    top: 138.3,
                    start: 67,
                    child: AnimatedOpacity(
                          duration: Duration(milliseconds: 10),
                          opacity: _4opacityy,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 10,
                        child: Text("tamamlandı",
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  )),
                  PositionedDirectional(
                    top: 115.3,
                    start: 350,
                    child: Checkbox(
            value: completion4,
            onChanged: (bool value) {
                setState(() {
                    completion4 = value;
                    if (completion4 == true) {
                      _4opacity = 0.0;
                      _4opacityy = 1.0;
                    }
                    if (completion4 == false) {
                      _4opacity = 1.0;
                      _4opacityy = 0.0;
                    }
                });}),
                  ),
                  // incompleted 2
                  PositionedDirectional(
                    top: 176.7,
                    start: 67,
                    child: AnimatedOpacity(
                          duration: Duration(milliseconds: 10),
                          opacity: _2opacity,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 10,
                        child: Text("tamamlanmadı",
                            style: const TextStyle(
                                color: const Color(0xffff0000),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  )),
                  PositionedDirectional(
                    top: 176.7,
                    start: 67,
                    child: AnimatedOpacity(
                          duration: Duration(milliseconds: 10),
                          opacity: _2opacityy,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 10,
                        child: Text("tamamlandı",
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  )),
                  PositionedDirectional(
                    top: 152.3,
                    start: 350,
                    child: Checkbox(
            value: completion2,
            onChanged: (bool value) {
                setState(() {
                    completion2 = value;
                    if (completion2 == true) {
                      _2opacity = 0.0;
                      _2opacityy = 1.0;
                    }
                    if (completion2 == false) {
                      _2opacity = 1.0;
                      _2opacityy = 0.0;
                    }
                });}),
                  ),

                  // world
                  PositionedDirectional(
                    top: 239.3,
                    start: 35.7,
                    child: GestureDetector(
                      onTap: (){},
                    child: WorldAsset()),
                  ),
                  // yerlesmegelisim
                  PositionedDirectional(
                    top: 308.7,
                    start: 35.7,
                    child: GestureDetector(
                      onTap: (){},
                    child: YerlesmeGelisimAsset()),
                  ),
                  // people
                  PositionedDirectional(
                    top: 239.7,
                    start: 185.3,
                    child: GestureDetector(
                      onTap: (){},
                    child: PeopleAsset()),
                  ),
                  // doku
                  PositionedDirectional(
                    top: 274,
                    start: 185.3,
                    child: GestureDetector(
                      onTap: (){},
                    child: DokuAsset()),
                  ),
                  // yerand
                  PositionedDirectional(
                    top: 308.7,
                    start: 185.3,
                    child: GestureDetector(
                      onTap: (){},
                      child: YerandAsset()),
                  ),
                  // turkey
                  PositionedDirectional(
                    top: 274,
                    start: 36,
                    child: GestureDetector(
                      onTap: (){},
                    child: TurkeyAsset()),
                  ),
                  // bildirim
                  // PositionedDirectional(
                  //   top: 1861,
                  //   start: 579,
                  //   child: Container(
                  //       width: 34.333333333333336, height: 3.6666666666666665),
                  // )
                ]))),
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
                        leading: new Icon(Icons.calendar_today),
                        title: Text('Classes',
                            style: TextStyle(
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                            )),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/dersprogrami');
                        },
                      ),
                    ],
                  ),
                ))));
  }
}
