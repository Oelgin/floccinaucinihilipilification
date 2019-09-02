import 'package:flutter/material.dart';
import 'package:smartclassmuadil/main.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch screen'),
          onPressed: () {
                  Navigator.pop(context);
                  }

        ),
      ),
    );
  }
}