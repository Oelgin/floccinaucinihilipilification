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
            ]),
        body: SingleChildScrollView(
            // background
            child: Container(
                width: 414,
                height: 1337,
                decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage('images/background.png'),
                  fit: BoxFit.fill,
                ),
              ),
                child: Stack(children: [
                  // mealinfo
                  PositionedDirectional(
                    top: 1825,
                    start: 97,
                    child: Container(
                        width: 353.6666666666667, height: 283.6666666666667),
                  ),
                  // classesinfo
                  PositionedDirectional(
                    top: 2754,
                    start: 93,
                    child: Container(width: 356.6666666666667, height: 207),
                  ),
                  // attendanceinfo
                  PositionedDirectional(
                    top: 3375,
                    start: 94,
                    child: Container(width: 356.6666666666667, height: 189),
                  ),
                  // grades
                  PositionedDirectional(
                    top: 1343,
                    start: 91,
                    child: Container(
                        width: 356.6666666666667, height: 141.66666666666666),
                  ),
                  // homeworkbox
                  PositionedDirectional(
                    top: 380,
                    start: 86,
                    child: Container(
                        width: 356.6666666666667, height: 141.66666666666666),
                  ),
                  // announcements
                  PositionedDirectional(
                    top: 859,
                    start: 86,
                    child: Container(
                        width: 356.6666666666667, height: 141.66666666666666),
                  ),
                  // infobox
                  PositionedDirectional(
                    top: 34,
                    start: 206,
                    child: Container(
                        width: 180.33333333333334, height: 90.33333333333333),
                  ),
                  // fastmenu
                  PositionedDirectional(
                    top: 35,
                    start: 759,
                    child: Container(width: 134, height: 90),
                  ),
                  // studentphoto
                  PositionedDirectional(
                    top: 35,
                    start: 77,
                    child: Container(
                        width: 90.66666666666667, height: 89.66666666666667),
                  ),
                  // refresh/replcaewithicon kopya 2
                  PositionedDirectional(
                    top: 1340,
                    start: 1065,
                    child: Container(
                        width: 26.333333333333332, height: 26.333333333333332),
                  ),
                  // refresh/replcaewithicon kopya 5
                  PositionedDirectional(
                    top: 3370,
                    start: 1065,
                    child: Container(
                        width: 26.333333333333332, height: 26.333333333333332),
                  ),
                  // refresh/replcaewithicon
                  PositionedDirectional(
                    top: 375,
                    start: 1065,
                    child: Container(
                        width: 26.333333333333332, height: 26.333333333333332),
                  ),
                  // refresh/replcaewithicon kopya
                  PositionedDirectional(
                    top: 853,
                    start: 1065,
                    child: Container(
                        width: 26.333333333333332, height: 26.333333333333332),
                  ),
                  // refresh/replcaewithicon kopya 4
                  PositionedDirectional(
                    top: 2749,
                    start: 1065,
                    child: Container(
                        width: 26.333333333333332, height: 26.333333333333332),
                  ),
                  // refresh/replcaewithicon kopya 3
                  PositionedDirectional(
                    top: 1818,
                    start: 1065,
                    child: Container(
                        width: 26.333333333333332, height: 26.333333333333332),
                  ),
                  // incompleted 3
                  PositionedDirectional(
                    top: 694,
                    start: 205,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 5.666666666666667,
                        child: Text("tamamlanmadı",
                            style: const TextStyle(
                                color: const Color(0xffff0000),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  ),
                  // incompleted1
                  PositionedDirectional(
                    top: 505,
                    start: 201,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 5.666666666666667,
                        child: Text("tamamlanmadı",
                            style: const TextStyle(
                                color: const Color(0xffff0000),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  ),
                  // incompleted 4
                  PositionedDirectional(
                    top: 776,
                    start: 205,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 5.666666666666667,
                        child: Text("tamamlanmadı",
                            style: const TextStyle(
                                color: const Color(0xffff0000),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  ),
                  // incompleted 2
                  PositionedDirectional(
                    top: 596,
                    start: 201,
                    child: SizedBox(
                        width: 55.666666666666664,
                        height: 5.666666666666667,
                        child: Text("tamamlanmadı",
                            style: const TextStyle(
                                color: const Color(0xffff0000),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 6.5),
                            textAlign: TextAlign.center)),
                  )
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
                    ],
                  ),
                ))));
  }
}
