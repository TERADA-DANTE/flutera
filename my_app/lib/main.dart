import 'package:flutter/material.dart';

void main() => runApp(Flutera());

class Flutera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutera",
      initialRoute: "/",
      routes: {"/": (context) => Home(), "/detail": (context) => Detail()},
    );
  }
}
