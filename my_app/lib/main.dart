import 'package:flutter/material.dart';
import 'package:my_app/a.dart';
import 'package:my_app/b.dart';
import 'package:my_app/c.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutera",
      initialRoute: '/',
      routes: {
        '/': (context) => A(),
        '/B': (context) => B(),
        '/C': (context) => C(),
      },
    );
  }
}
