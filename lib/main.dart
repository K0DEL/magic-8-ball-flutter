import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MagicPoolApp(),
  );
}


class MagicPoolApp extends StatefulWidget {
  @override
  _MagicPoolAppState createState() => _MagicPoolAppState();
}

class _MagicPoolAppState extends State<MagicPoolApp> {

  int number = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar:AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      number = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/ball$number.png'),
                ),
              ),
            ],
          ),
        ),
        ),
      );
  }
}
