import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: ballPage(),
    ),
  );
}

class ballPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ball(),
    );
  }
}

class ball extends StatefulWidget {
  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  @override
  int ballNumber = 1;
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(
              () {
                ballNumber = Random().nextInt(5) + 1;
              },
            );
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
