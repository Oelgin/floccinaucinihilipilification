import 'dart:async';
import 'dart:io';
import 'package:flutter/animation.dart';

import 'package:googleapis/calendar/v3.dart' as cal;
import 'package:googleapis_auth/auth_io.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:animator/animator.dart';

// final _credentials = new ServiceAccountCredentials.fromJson(r'''
// {
//   "private_key_id": "74688910539edcc0c3a78efa6913a05d40a69855",
//   "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCKU9Nu68/fnuxe\naeI3kbecxrschRi88blq+AR/vlNpB2Iz7fuH1bkCsCOEdYlg2YlMzR4O2WPOMGNx\nC6T5rH2GPYYYpzCiZBi1muHgCOdIGj5zrLWoO4ir4C08z/zP3anc0B6U5Q8jW7uL\n/ST0p16c+vJk8+Gm1Oa36PDwewlyM9B8Zf/SuooDxfyzR3SMvpRJKuBiBXAVem5N\n6bKzA6AIo12r7juRqotZM21iUh5JLh15Hlbus+jE6XPDu11cygTLd2ZhS5mdansy\nrDJITgSHT0/gadj0XjDfzWVzgPcvc2yR3raqJYAVmpOsjcZ78FLwNHk2ZjGoIiY6\nOqCd5bHnAgMBAAECggEAOQZ0uBoT0Mr6A7Qf86upZ8LPuWKvP5lhSJVleWozha1r\nESBvXODBTDfj9IPl9hzICvbWiOWazRJKtHxJ7znqZ5BuezRViuS8AQYQTyUsf59+\nFn7hRrEAV2bsD1FpFiJ6F9NegCBsHLYA+6WI+ikTiqCzk+WspXPIh5HK3kDCtKbH\nf/lgUIKp7fL+YjWWuKiJnTkBRZm831ErX3tug+61dRdPmgJT/2rkSg5/uKB7Lken\ne1RRwBPYqQIigI8D6h0Py663hWSgdWWwQHZfGq7wr/AMd639kfYxas6Rs7fbe+tN\nmNt+S0r+x7PDlJxH3nKlvN++QgjKziuu4rGqpSXj6QKBgQDAK1rKtObwvUh6l1nb\nE3hpWNXJK98v07GoQoYEoQUAYD7Rs2Fcn6mwupeOLePhNKfUe3v6Hjkv7p8BQ8+l\nsCavQmZXdHUyNSuenjQ+w0vGj/lO+MVW6KTTh0NSL3Np6heKemhMbryDRupHIoOq\nApL8Ekhl/SoGgEZUh9+09JFDrwKBgQC4RihkvtFJjbK7mUq4FNtSOwZ+Jo7CcCpp\nE2SlfxPNVecTxLiIfqbO0FP3NGQLgejRE2Q49ySA7xb3t2YSouvZie76cqk8hFCa\nUUXkdAiEFbdljymLTIX//XUxB6bdnBa2iWcVGlfZxnHYJmrGK6cG/B2SsVRq4LG5\nchtsT1UrSQKBgGrpc+ikvnsfA6zYeXBNo8cQWlhCpTfpkcRnxkHbB3pPEYP/RWKP\nnYuqM9kxJL/NWLX5QV9E41IMcr/0ZxjqKIuG6IMtUmptdGgZ4j0s0AKXZP+PndKd\nOd5JOaYGqjI5v4EWWuJzFUP/9yU+SXwTVI0S6t56+5+ETByJP2dgTVUXAoGBAKxG\nuwDk/Jj9ZnnIqHhM13abREiwF4tkfeHahZ/LnGG9y9lJcxP5BE4ZqkZUrqurelPt\nAyfWtkPsQta4mS8XLdQlBk0S4XF4ajq7fNJGQKfr/ZdvLnHSyvw2o1eBRdmtUfa5\noquyAyvQQSLJV82JhhAbqDI6oyeAhedP7J9n08IxAoGANjiiG0neyeNFoLpgZ7vk\nQgKVHCEPo5zO17yE4xW27r7lT94H8rUPJHTUJiMk0jOpywCnlrjL+uhSfcYyGSYR\nXkZi2Gjnde4jYBNbTXziaqtfPfNanjKll7ivJuJP1DZeSE876W4sBS+78Pw3K9XB\nRJYkKBd3BdPYOMhH0G8WWlQ=\n-----END PRIVATE KEY-----\n",
//   "client_email": "gcalendar@gsigninwclasses.iam.gserviceaccount.com",
//   "client_id": "108365100391627380155",
//   "type": "service_account",
// }
// ''');

// const _SCOPES = const [cal.CalendarApi.CalendarEventsReadonlyScope];

// void getCalendarEvents() { 
//     clientViaServiceAccount(_credentials, _SCOPES).then((client) {
//       var calendar = new cal.CalendarApi(client);
//       var calEvents = calendar.events.list("aybars.ari26@gmail.com");
//       calEvents.then((cal.Events events) {
//         events.items.forEach((cal.Event event) {print(event.summary);});
//       });
//     });
// }

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final FirebaseUser user = await _auth.signInWithCredential(credential);

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);

  return 'signInWithGoogle succeeded: $user';
}

void signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Sign Out");
}

class Dersprogrami extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DersprogramiState();
  }
}

class _DersprogramiState extends State<Dersprogrami>
    with SingleTickerProviderStateMixin {
  double b = 0;
  @override
  Widget build(BuildContext context) {
    return Animator(
      tweenMap: {
        "rotateAnim": Tween<double>(begin: 0, end: 5.0),
      },
      cycles: 0,
      builderMap: (anim) => Center(
        child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
                child: Transform.rotate(
                  angle: b,
                  child: Icon(
                    Icons.refresh,
                  ),
                ),
                shape: _DiamondBorder(),
                onPressed: () {
                  setState(() {
                    b = anim["rotateAnim"].value;
                  });
                  signInWithGoogle().whenComplete(() {
                    setState(() {
                      b = 0;
                    });
                    print("complete");
                  });
                }),
            bottomNavigationBar: BottomAppBar(
                child: Container(
              height: 35.0,
              color: Colors.blue,
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      alignment: Alignment.centerLeft,
                      icon: Icon(Icons.home),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/second');
                      },
                    ),
                    IconButton(
                      alignment: Alignment.centerRight,
                      icon: Icon(Icons.calendar_today),
                      onPressed: () {
                      },
                    ),
                  ]),
            )),
            body: SingleChildScrollView(
                child: // Rectangle 1
                    Container(
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
                          // Rectangle 6
                          PositionedDirectional(
                            top: 27,
                            start: 11,
                            child: Container(
                              width: 393,
                              height: 473,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(29)),
                                  border: Border.all(
                                      color: const Color(0xffff00a7),
                                      width: 3)),
                              child: GridView(
                                padding: EdgeInsets.fromLTRB(10,20,10,0),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    //crossAxisCount: The number of children in the cross axis.
                                    crossAxisCount: 6,
                                    childAspectRatio: 1.0,
                                    mainAxisSpacing: 10.0,
                                    crossAxisSpacing: 10.0,
                                  ),
                                  children: <Widget>[
                                    _buildContainer(),
                                    _buildContainer(),
                                    _buildContainer(),
                                    _buildContainer(),
                                    _buildContainer(),
                                    _buildContainer(),
                                    _buildContainer(),
                                    _buildContainer(),
                                    _buildContainer(),
                                  ]),
                            ),
                          ),
                          // Group 3
                          PositionedDirectional(
                            top: 529,
                            start: 34,
                            child: SizedBox(
                                width: 194,
                                height: 179,
                                child: Stack(children: [
                                  // Ellipse 1
                                  PositionedDirectional(
                                    top: 0,
                                    start: 0,
                                    child: Container(
                                        width: 27,
                                        height: 27,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color(0xffb52b2b))),
                                  ),
                                  // Ellipse 2
                                  PositionedDirectional(
                                    top: 38,
                                    start: 0,
                                    child: Container(
                                        width: 27,
                                        height: 27,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color(0xff38199f))),
                                  ),
                                  // Ellipse 3
                                  PositionedDirectional(
                                    top: 76,
                                    start: 0,
                                    child: Container(
                                        width: 27,
                                        height: 27,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color(0xff09c652))),
                                  ),
                                  // Ellipse 4
                                  PositionedDirectional(
                                    top: 0,
                                    start: 167,
                                    child: Container(
                                        width: 27,
                                        height: 27,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color(0xffffa700))),
                                  ),
                                  // Ellipse 5
                                  PositionedDirectional(
                                    top: 38,
                                    start: 167,
                                    child: Container(
                                        width: 27,
                                        height: 27,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color(0xffff00a7))),
                                  ),
                                  // Ellipse 6
                                  PositionedDirectional(
                                    top: 76,
                                    start: 167,
                                    child: Container(
                                        width: 27,
                                        height: 27,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color(0xff000000))),
                                  ),
                                  // Ellipse 7
                                  PositionedDirectional(
                                    top: 114,
                                    start: 0,
                                    child: Container(
                                        width: 27,
                                        height: 27,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color(0xffdde51c))),
                                  ),

                                  // Ellipse 10
                                  PositionedDirectional(
                                    top: 114,
                                    start: 167,
                                    child: Container(
                                        width: 27,
                                        height: 27,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color(0xffffffff))),
                                  ),

                                  // Ellipse 12
                                  PositionedDirectional(
                                    top: 0,
                                    start: 0,
                                    child: Container(
                                        width: 27,
                                        height: 27,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color(0xffb52b2b))),
                                  )
                                ])),
                          ),
                          // Group 1
                          PositionedDirectional(
                            top: 537,
                            start: 74,
                            child: SizedBox(
                                width: 258,
                                height: 171,
                                child: Stack(children: [
                                  // Matematik
                                  PositionedDirectional(
                                    top: 0,
                                    start: 0,
                                    child: SizedBox(
                                        width: 102,
                                        height: 23,
                                        child: Text("Matematik",
                                            style: const TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "STIXSizeTwoSym",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 20.0),
                                            textAlign: TextAlign.left)),
                                  ),
                                  // Turkce
                                  PositionedDirectional(
                                    top: 34,
                                    start: 0,
                                    child: SizedBox(
                                        width: 66,
                                        height: 23,
                                        child: Text("Turkce",
                                            style: const TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "STIXSizeTwoSym",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 20.0),
                                            textAlign: TextAlign.left)),
                                  ),
                                  // Kimya
                                  PositionedDirectional(
                                    top: 72,
                                    start: 0,
                                    child: SizedBox(
                                        width: 59,
                                        height: 23,
                                        child: Text("Kimya",
                                            style: const TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "STIXSizeTwoSym",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 20.0),
                                            textAlign: TextAlign.left)),
                                  ),
                                  // Fizik
                                  PositionedDirectional(
                                    top: 110,
                                    start: 0,
                                    child: SizedBox(
                                        width: 45,
                                        height: 23,
                                        child: Text("Fizik",
                                            style: const TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "STIXSizeTwoSym",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 20.0),
                                            textAlign: TextAlign.left)),
                                  ),

                                  // İngilizce
                                  PositionedDirectional(
                                    top: 0,
                                    start: 167,
                                    child: SizedBox(
                                        width: 81,
                                        height: 23,
                                        child: Text("İngilizce",
                                            style: const TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "STIXSizeTwoSym",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 20.0),
                                            textAlign: TextAlign.left)),
                                  ),
                                  // Tarih
                                  PositionedDirectional(
                                    top: 34,
                                    start: 167,
                                    child: SizedBox(
                                        width: 50,
                                        height: 23,
                                        child: Text("Tarih",
                                            style: const TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "STIXSizeTwoSym",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 20.0),
                                            textAlign: TextAlign.left)),
                                  ),
                                  // Cografya
                                  PositionedDirectional(
                                    top: 72,
                                    start: 167,
                                    child: SizedBox(
                                        width: 87,
                                        height: 23,
                                        child: Text("Cografya",
                                            style: const TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "STIXSizeTwoSym",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 20.0),
                                            textAlign: TextAlign.left)),
                                  ),
                                  PositionedDirectional(
                                    top: 87,
                                    start: 167,
                                    child: SizedBox(
                                        width: 87,
                                        height: 50,
                                        child: Text("Beden E.",
                                            style: const TextStyle(
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "STIXSizeTwoSym",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 20.0),
                                            textAlign: TextAlign.left)),
                                  ),
                                ])),
                          ),
                          // Rectangle 7
                          PositionedDirectional(
                            top: 0,
                            start: 141,
                            child: Container(
                                width: 133,
                                height: 44,
                                decoration: BoxDecoration(
                                    color: const Color(0xffffffff))),
                          ),
                          // 12:12
                          PositionedDirectional(
                            top: 11,
                            start: 179,
                            child: SizedBox(
                                width: 57,
                                height: 23,
                                child: Text("12:12",
                                    style: const TextStyle(
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "STIXSizeTwoSym",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20.0),
                                    textAlign: TextAlign.left)),
                          )
                        ])))),
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      height: 50.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        shape: BoxShape.circle,
      ),
    );
  }
}

class _DiamondBorder extends ShapeBorder {
  const _DiamondBorder();

  @override
  EdgeInsetsGeometry get dimensions {
    return const EdgeInsets.only();
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..moveTo(rect.left + rect.width / 2.0, rect.top)
      ..lineTo(rect.right, rect.top + rect.height / 2.0)
      ..lineTo(rect.left + rect.width / 2.0, rect.bottom)
      ..lineTo(rect.left, rect.top + rect.height / 2.0)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  // This border doesn't support scaling.
  @override
  ShapeBorder scale(double t) {
    return null;
  }
}
