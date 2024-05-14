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
            body: GridView.builder(
                itemCount: 64,
                gridDelegate:
                    // Grid delegate controls how many items are displayed in a row
                    SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                itemBuilder: (context, index) => Container(
                      color: Colors.deepPurple,
                      margin: EdgeInsets.all(2),
                    ))));
  }
}
