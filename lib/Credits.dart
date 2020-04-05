import 'package:flutter/material.dart';
class Credits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Inventory App By:",
              textAlign: TextAlign.center,
              textWidthBasis: TextWidthBasis.parent,
              textScaleFactor: 3.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Ashwani(AshK)",
              textAlign: TextAlign.center,
              textWidthBasis: TextWidthBasis.parent,
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Vishal",
              textAlign: TextAlign.center,
              textWidthBasis: TextWidthBasis.parent,
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Siddhi",
              textAlign: TextAlign.center,
              textWidthBasis: TextWidthBasis.parent,
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Ayushi",
              textAlign: TextAlign.center,
              textWidthBasis: TextWidthBasis.parent,
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Arvind",
              textAlign: TextAlign.center,
              textWidthBasis: TextWidthBasis.parent,
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Raghav",
              textAlign: TextAlign.center,
              textWidthBasis: TextWidthBasis.parent,
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ));
  }
}