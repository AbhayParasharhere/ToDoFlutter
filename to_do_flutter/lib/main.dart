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
          body: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) => ListTile(
                    title: Text(names[index]),
                  ))),
      // ListView(
      //   scrollDirection: Axis.vertical, // Can be horizontal or vertical
      //   children: [

      //     Expanded(
      //         flex: 1, child: Container(height: 350, color: Colors.red)),
      //     Expanded(
      //         flex: 2, child: Container(height: 350, color: Colors.blue)),
      //     Expanded(
      //       child: Container(
      //         height: 500,
      //         decoration: BoxDecoration(
      //           color: Colors.deepPurple,
      //           borderRadius: BorderRadius.circular(20.0),
      //         ),
      //         padding: EdgeInsets.all(25.0),
      //         // padding: EdgeInsets.only(left: 10.0),
      //         // padding: EdgeInsets.symmetric(horizontal: 10.0,vertical:20.0),
      //         child: Text(
      //           "TEST text widget",
      //           style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     )
      //     // color: Colors.deepPurple,
      //   ],
      // )),
    );
  }
}
