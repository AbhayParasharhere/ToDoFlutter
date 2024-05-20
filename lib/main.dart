// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List names = ["Jon", "Jones", "Jane", "Doe"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.deepPurple[200],
            appBar: AppBar(
                title: Center(child: Text("Test App bar")),
                backgroundColor: Colors.deepPurple[400],
                leading: Icon(Icons.menu),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
                ]),
            body: GestureDetector(
                onTap: () {
                  print("Tapped");
                },
                child: Stack(alignment: Alignment.topCenter, children: [
                  Container(
                      height: 300, width: 300, color: Colors.deepPurple[800]),
                  Container(
                      height: 200, width: 200, color: Colors.deepOrange[400]),
                  Container(
                      height: 100, width: 100, color: Colors.deepOrange[200])
                ]))));
  }
}
