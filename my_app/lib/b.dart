import 'package:flutter/material.dart';

class B extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hey'),
      ),
      body: Center(
        child: TextButton(
          child: Text('Click me'),
          onPressed: () {
            Navigator.pushNamed(context, '/C');
          },
        ),
      ),
    );
  }
}
