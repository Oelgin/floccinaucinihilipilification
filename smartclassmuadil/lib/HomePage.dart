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
                    child: FastMenuAsset(),
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
                  // announcements iconbutton
                  Positioned(
                    top: 30,
                    right: 110,
                    child: IconButton(
                      icon: Icon(Icons.announcement),
                      onPressed: () {
                        print("Announcements");
                      },
                    ),
                  ),
                  // homework iconbutton
                  Positioned(
                    top: 30,
                    right: 70,
                    child: IconButton(
                      icon: Icon(Icons.border_color),
                      onPressed: () {
                        print("Homework");
                      },
                    ),
                  ),
                  // meal iconbutton
                  Positioned(
                    top: 30,
                    right: 30,
                    child: IconButton(
                      icon: Icon(Icons.restaurant_menu),
                      onPressed: () {
                        print("Meal List");
                      },
                    ),
                  ),
                  // add iconbutton
                  Positioned(
                    top: 60,
                    right: 90,
                    child: IconButton(
                      icon: Icon(Icons.spellcheck),
                      onPressed: () {
                        print("Attendance");
                      },
                    ),
                  ),
                  // calendar iconbutton
                  Positioned(
                    top: 60,
                    right: 50,
                    child: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () {
                        print("Calendar");
                      },
                    ),
                  ),
                  // more info 1
                  Positioned(
                    top: 119,
                    right: 32.7,
                    width: 26.333333333333332, 
                    height: 26.333333333333332,
                    child: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {
                        print("more");
                      },
                    ),
                  ),
                  // more info 2
                  Positioned(
                    top: 278.3,
                    right: 32.7,
                    width: 26.333333333333332, 
                    height: 26.333333333333332,
                    child: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {
                        print("more");
                      },
                    ),
                  ),
                  // more info 3
                  Positioned(
                    top: 440.7,
                    right: 32.7,
                    width: 26.333333333333332, 
                    height: 26.333333333333332,
                    child: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {
                        print("more");
                      },
                    ),
                  ),
                  // more info 4
                  Positioned(
                    top: 600,
                    right: 32.7,
                    width: 26.333333333333332, 
                    height: 26.333333333333332,
                    child: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {
                        print("more");
                      },
                    ),
                  ),
                  // more info 5
                  Positioned(
                    top: 910.3,
                    right: 32.7,
                    width: 26.333333333333332, 
                    height: 26.333333333333332,
                    child: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {
                        print("more");
                      },
                    ),
                  ),
                  // more info 6
                  Positioned(
                    top: 1118.6,
                    right: 32.7,
                    width: 26.333333333333332, 
                    height: 26.333333333333332,
                    child: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {
                        print("more");
                      },
                    ),
                  ),
                  // incompleted 3
                  PositionedDirectional(
                    top: 168.3,
                    start: 67,
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
                  ),
                  // incompleted1
                  PositionedDirectional(
                    top: 198.7,
                    start: 67,
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
                  ),
                  // incompleted 4
                  PositionedDirectional(
                    top: 231.3,
                    start: 67,
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
                  ),
                  // incompleted 2
                  PositionedDirectional(
                    top: 258.7,
                    start: 67,
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
