import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 앱 자체의 메타? 이므로 스마트폰등에서 이것을 참조한다.
        title: 'My first flutter app',
        theme: ThemeData(primarySwatch: Colors.blue), // ThemeData
        // home.isRequired~~
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 앱 화면이므로 Text 클래스를 가져온다.
        title: Text('Hello world!'),
      ),
      body: Center(
        child: Column(
            children: <Widget>[Text('Terada'), Text('Soeda'), Text('Okimary')]),
      ),
    );
  }
}
