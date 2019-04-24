import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.greenAccent,
      child: Center(
        child: Text(
          generateLuckyNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }

  String generateLuckyNumber() {
    var random = Random();
    int luckyNumber = random.nextInt(10);
    //$ for string interpolation
    return "Your lucky Number is ${luckyNumber}";
  }
}
