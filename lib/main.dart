import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text('Ask Me Anything'),
          ),
          backgroundColor: Colors.blue,
          body: BallActivity(),
        ),
      ),
    );

class BallActivity extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallActivity> {
  int ballNumber = 1;

  void randomiseBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          randomiseBall();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
