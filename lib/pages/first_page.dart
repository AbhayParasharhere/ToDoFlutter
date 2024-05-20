// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do_flutter/pages/home_page.dart';
import 'package:to_do_flutter/pages/profile_page.dart';
import 'package:to_do_flutter/pages/setting_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // keeptrack of the current page
  int _selectedPageIndex = 0;

  // method to change the selected page index to the new index
  void _navigateToPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  // Keep track of our pages
  final List _pages = [
    // home page
    HomePage(),

    // Profile Page
    ProfilePage(),

    // Setting Page
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Page'),
          backgroundColor: Colors.blue[200],
        ),
        body: _pages[_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          onTap: _navigateToPage,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ],
        ));
  }
}
