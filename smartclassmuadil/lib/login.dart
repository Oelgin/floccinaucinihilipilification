import 'package:flutter/material.dart';
import 'assets.dart';

void login() {
  runApp(MaterialApp(
      title: 'Zame',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Zame Powerclass"),
        ),
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
                  // loginbox
                  PositionedDirectional(
                    top: 742,
                    start: 139,
                    child: Container(
                        width: 336.6666666666667, height: 274.3333333333333),
                  ),
                  // zamerenkliyazi
                  PositionedDirectional(
                    top: 484,
                    start: 337,
                    child: Container(width: 205, height: 69.66666666666667),
                  ),
                  // loginbutton
                  PositionedDirectional(
                    top: 1397,
                    start: 225,
                    child: Container(width: 279.6666666666667, height: 36),
                  ),
                  // zamelogo
                  PositionedDirectional(
                    top: 2061,
                    start: 66,
                    child: Container(
                        width: 31.666666666666668, height: 35.666666666666664),
                  ),
                  // mustrerihizmetleri
                  PositionedDirectional(
                    top: 2057,
                    start: 858,
                    child: Container(width: 29, height: 32.333333333333336),
                  ),
                  // icons8-help-48
                  PositionedDirectional(
                    top: 2066,
                    start: 1059,
                    child: Container(
                        width: 27.666666666666668, height: 27.666666666666668),
                  ),
                  // icons8-lock-48
                  PositionedDirectional(
                    top: 2062,
                    start: 965,
                    child: Container(
                        width: 23.333333333333332, height: 28.666666666666668),
                  ),
                  // zamegri
                  PositionedDirectional(
                    top: 1628,
                    start: 571,
                    child: Container(
                        width: 44.333333333333336, height: 13.666666666666666),
                  )
                ]))),
      )));
}
