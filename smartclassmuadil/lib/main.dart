import 'package:flutter/material.dart';
import 'package:fix/HomePage.dart';
import 'assets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Power Class',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
          '/home': (context) => MyHomePage(),
          '/second': (context) => SecondScreen(),

        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
const String username = "kcankaya";
const String password = "kaan123kaan";

class _MyHomePageState extends State<MyHomePage> {
    var _opacity = 0.0;
  final usernameCont = new TextEditingController();
  final passCont = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login",
          style: TextStyle(fontFamily: "Futura",
                                  fontStyle: FontStyle.normal,),
      )),
      body: Center(
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
                //pass

                // loginbox
                Positioned(
                  top: 247.3,
                  left: 46.3,
                  width: 336.6666666666667,
                  height: 274.3333333333333,
                  child: LoginBoxAsset(),
                ),
                // zamerenkliyazi
                Positioned(
                  top: 161.3,
                  left: 112.3,
                  child: ZameColorAsset(),
                ),
                // loginbutton
                Positioned(
                  top: 465.7,
                  left: 75,
                  width: 279.6666666666667,
                  height: 36,
                  child: ButtonTheme(
                      minWidth: 200,
                      height: 36,
                      child: RaisedButton(
                        onPressed: () {
                          if (username == usernameCont.text &&
                              password == passCont.text) {
                             Navigator.pushReplacementNamed(context, '/second');
                          } else {
                            setState(() {
                              _opacity = _opacity == 0.0 ? 1.0 : 0.0;
                            });
                          }
                        },
                        child: Text("Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            )),
                      )),
                ),
                PositionedDirectional(
                    top: 267,
                    start: 126,
                    child: SizedBox(
                      width: 175.33333333333334,
                      height: 100,
                      child: AnimatedOpacity(
                          duration: Duration(milliseconds: 10),
                          opacity: _opacity,
                          child: Text(
                              "KULLANICI ADINI VEYA ŞİFREYİ\nYANLIŞ GİRDİNİZ!\nTEKRAR DENEYİNİZ.",
                              style: const TextStyle(
                                  color: const Color(0xffff0000),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Futura",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 10.3),
                              textAlign: TextAlign.center)),
                    )),
                // zamelogo
                Positioned(
                  bottom: 13.3,
                  left: 27,
                  width: 31.666666666666668,
                  height: 35.666666666666664,
                  child: ZameLogoAsset(),
                ),
                // mustrerihizmetleri
                Positioned(
                    bottom: 18 - MediaQuery.of(context).viewInsets.bottom,
                    right: 99,
                    width: 29,
                    height: 32.333333333333336,
                    child: GestureDetector(
                        onTap: () {
                          inDevelopment(context);
                        },
                        child: PRIconAsset())),

                // icons8-help-48
                Positioned(
                  bottom: 19.7 - MediaQuery.of(context).viewInsets.bottom,
                  right: 33.3,
                  width: 27.666666666666668,
                  height: 27.666666666666668,
                  child: GestureDetector(
                    onTap: () {
                      inDevelopment(context);
                    },
                    child: HelpIconAsset(),
                  ),
                ),
                // icons8-lock-48
                Positioned(
                  bottom: 20 - MediaQuery.of(context).viewInsets.bottom,
                  right: 69,
                  width: 23.333333333333332,
                  height: 28.666666666666668,
                  child: GestureDetector(
                    onTap: () {
                      inDevelopment(context);
                    },
                    child: LockIconAsset(),
                  ),
                ),
                // zamegri
                Positioned(
                  top: 542.7,
                  left: 190.3,
                  width: 44.333333333333336,
                  height: 13.666666666666666,
                  child: ZameGriAsset(),
                ),
                Positioned(
                  top: 340,
                  left: 82.3,
                  child: SizedBox(
                      width: 250,
                      height: 25,
                      child: TextField(
                          controller: usernameCont,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Username",
                            hintStyle: const TextStyle(
                                color: const Color(0xffafe6ed),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 17.5),
                          ),
                          style: const TextStyle(
                              color: const Color(0xffafe6ed),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                              fontSize: 17.5),
                          textAlign: TextAlign.left)),
                ),
                //password
                PositionedDirectional(
                  bottom: 235 + MediaQuery.of(context).viewInsets.bottom,
                  start: 84,
                  child: SizedBox(
                      width: 250,
                      height: 25,
                      child: TextField(
                          controller: passCont,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: const TextStyle(
                                color: const Color(0xffafe6ed),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Futura",
                                fontStyle: FontStyle.normal,
                                fontSize: 17.5),
                          ),
                          style: const TextStyle(
                              color: const Color(0xffafe6ed),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Futura",
                              fontStyle: FontStyle.normal,
                              fontSize: 17.5),
                          textAlign: TextAlign.left)),
                ),
              ]))),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

void inDevelopment(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text("Maalesef"),
        content: new Text("Daha geliştirme aşamasında."),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text("Kapat"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
