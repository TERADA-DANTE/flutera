import 'package:flutter/material.dart';
import 'package:my_app/home.dart';
import 'package:my_app/detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutera",
      initialRoute: "/",
      routes: {"/": (context) => Home(), "/detail": (context) => Detail()},
    );
  }
}
