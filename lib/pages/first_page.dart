import 'package:flutter/material.dart';
import 'package:to_do_flutter/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Go to the Second page"),
            onPressed: () {
              // Navigate to the second page using Navigator.push
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
              );
            }),
      ),
    );
  }
}
