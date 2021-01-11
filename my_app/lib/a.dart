import 'package:flutter/material.dart';

class A extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A"),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
              child: Text('B'),
              onPressed: () {
                Navigator.pushNamed(context, '/B');
              },
            ),
          ),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
              child: Text('C'),
              onPressed: () {
                Navigator.pushNamed(context, '/C');
              },
            ),
          ),
        ],
      ),
    );
  }
}
