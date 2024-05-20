// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_flutter/pages/first_page.dart';
import 'package:to_do_flutter/pages/home_page.dart';
import 'package:to_do_flutter/pages/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          '/home': (context) => HomePage(),
          '/setting': (context) => SettingPage(),
        });
  }
}
