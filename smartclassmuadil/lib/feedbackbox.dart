import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'main.dart';

final titleCont = new TextEditingController();
final feedbackCont = new TextEditingController();

class FeedbackBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FeedbackBoxState();
  }
}

class _FeedbackBoxState extends State<FeedbackBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Feedback Box",
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
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(1, 0),
                        end: Alignment(0, 1),
                        colors: [
                      const Color(0xff5cc8e6),
                      const Color(0xffc6dce9)
                    ])),
                child: Stack(children: [
                  // Rectangle 3
                  PositionedDirectional(
                    top: 108,
                    start: 37,
                    child: Container(
                        width: 104,
                        height: 94,
                        decoration:
                            BoxDecoration(color: const Color(0xff000000))),
                  ),
                  // Rectangle 2
                  PositionedDirectional(
                    top: 138,
                    start: 36,
                    child: Container(
                        width: 342,
                        height: 243,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(19)),
                            color: const Color(0xffffffff))),
                  ),
                  // Feedback:
                  PositionedDirectional(
                    top: 111,
                    start: 39,
                    child: SizedBox(
                        width: 97,
                        height: 23,
                        child: Text("Feedback:",
                            style: const TextStyle(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w400,
                                fontFamily: "STIXSizeTwoSym",
                                fontStyle: FontStyle.normal,
                                fontSize: 20.0),
                            textAlign: TextAlign.left)),
                  ),
                  // asdjasdasodpaspdkasdğdlpasl Asdasldşasdkanskdnasjdnakld asdnaslkdmaslkdmasklmdlasd asdnlakdasksmdlasmdlkasdlk asdnadaklsdmlaksdlaskdlasmd asldjaskldmaskldmasdlkmasdk ajskdnaskdaslkdlamsdmklasdl askldmasldadşöasdlşaödşlasd asdklmaldaslşdasöşdlöasşdad
                  PositionedDirectional(
                    top: 134,
                    start: 51,
                    child: SizedBox(
                        width: 316,
                        height: 300,
                        child: TextField(
                            controller: feedbackCont,
                            maxLength: 38 * 8,
                            maxLines: 8,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "write",
                              hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Futura",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 17.5),
                            ),
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 17.5),
                            textAlign: TextAlign.left)),
                  ),
                  // Rectangle 4
                  PositionedDirectional(
                    top: 69,
                    start: 37,
                    child: Container(
                        width: 330,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            color: const Color(0xffffffff))),
                  ),
                  //  Title:
                  PositionedDirectional(
                    top: 49,
                    start: 40,
                    child: SizedBox(
                        width: 54,
                        height: 50,
                        child: Text(" Title:",
                            style: const TextStyle(
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "STIXSizeTwoSym",
                                fontStyle: FontStyle.normal,
                                fontSize: 20.0),
                            textAlign: TextAlign.left)),
                  ),
                  // asdkjasdakldsasdasdads
                  PositionedDirectional(
                    top: 83,
                    start: 95,
                    child: SizedBox(
                        width: 238,
                        height: 23,
                        child: TextField(
                          
                            controller: titleCont,
                            maxLength: 25,
                            maxLines: 1,
                            decoration: InputDecoration(
                              counterText: "",
                              border: InputBorder.none,
                              hintText: "write",
                              hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Futura",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 17.5),
                            ),
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 17.5),
                            textAlign: TextAlign.left)),
                  ),
                  // Rectangle 5
                  PositionedDirectional(
                    top: 399,
                    start: 236,
                    child: ButtonTheme(
                        minWidth: 148,
                        height: 36,
                        child: RaisedButton(
                          onPressed: () {
                            sendMail();
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(27)),
                          ),
                          color: const Color(0xff15a0de),
                          child: Text("Send",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              )),
                        )),
                  ),
                  // Send
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
                    ],
                  ),
                ))));
  }
}

void sendMail() async {
  String username = 'zameproject@gmail.com';
  String password = 'zame123123';
  final smtpServer = gmail(username, password);
  final message = Message()
    ..from = Address(username, 'Feedback/Powerclass')
    ..recipients.add('destination@example.com')
    ..ccRecipients.addAll(['hari@my.aci.k12.tr', 'mukalin33@gmail.com'])
    ..bccRecipients.add(Address('hari@my.aci.k12.tr'))
    ..subject = 'Feedback/Powerclass :: 😀 :: ${DateTime.now()}'
    ..text = '${titleCont.text}\n${feedbackCont.text}';
    titleCont.clear();
  feedbackCont.clear();
  final sendReport = await send(message, smtpServer);
  var connection = PersistentConnection(smtpServer);
  await connection.send(message);
  titleCont.clear();
  feedbackCont.clear();
}
