import 'package:fix/assets.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
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
                height: 1400,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage('images/background.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(children: [
                  // mealinfo
                  Positioned(
                    top: 608.3,
                    left: 32.3,
                    width: 353.6666666666667, 
                    height: 283.7,
                    child: MealInfoAsset(),   
                  ),
                  // classesinfo
                  Positioned(
                    top: 918,
                    left: 31,
                    width: 356.6666666666667, 
                    height: 207,
                    child: ClassesInfoAsset(),
                  ),
                  // attendanceinfo
                  Positioned(
                    top: 1125,
                    left: 31.3,
                    width: 356.6666666666667, 
                    height: 189,
                    child: AttendanceInfoAsset(),
                  ),
                  // grades
                  Positioned(
                    top: 447.7,
                    left: 30.3,
                    width: 356.6666666666667, 
                    height: 141.66666666666666,
                    child: GradesAsset(),
                  ),
                  // homeworkbox
                  Positioned(
                    top: 126.7,
                    left: 28.7,
                    width: 356.6666666666667, 
                    height: 141.66666666666666,
                    child: HomeWorkBoxAsset(),
                  ),
                  // announcements
                  Positioned(
                    top: 286.3,
                    left: 28.7,
                    width: 356.6666666666667, 
                    height: 141.66666666666666,
                    child: AnnouncementAsset(),
                  ),
                  // infobox
                  Positioned(
                    top: 11.3,
                    left: 68.7,
                    width: 180.33333333333334, 
                    height: 90.33333333333333,
                    child: InfoBoxAsset(),
                  ),
                  // fastmenu
                  Positioned(
                    top: 11.7,
                    right: 27,
                    width: 134, 
                    height: 90,
                    child: FastMenuAsset(
                    ) ,
                  ),
                  // studentphoto
                  Positioned(
                    top: 11.7,
                    left: 25.7,
                    width: 90.66666666666667, 
                    height: 89.66666666666667,
                    child: StudentPhotoAsset(),
                  ),
                  // zamelogo
                  Positioned(
                    bottom: 20,
                    left: 31,
                    width: 31.666666666666668,
                    height: 35.666666666666664,
                    child: ZameLogoAsset(),
                  ),
                  // powerclass text
                  Positioned(
                    bottom: 0,
                    left: 80,
                    width: 150,
                    height: 75,
                    child: PCTextAsset(), 
                  ),
                  // fastmenu iconbuttons
                  Positioned(
                    top:15,
                    right: 20,
                    child: IconButton(
                    icon: Icon(Icons.access_alarm),
                    onPressed: (){
                      print("dsadsa");
                    },),
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
                    top: 168.3,
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
                    top: 168.3,
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
                    top: 142.3,
                    start: 315,
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
                    top: 198.7,
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
                    top: 198.7,
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
                    top: 174.3,
                    start: 315,
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
                    top: 231.3,
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
                    top: 231.3,
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
                    top: 206.3,
                    start: 315,
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
                    top: 258.7,
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
                    top: 258.7,
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
                    top: 234.3,
                    start: 315,
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
                ]))
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
                        }), 
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
