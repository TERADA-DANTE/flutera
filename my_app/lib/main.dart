import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Flutera", home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext firstPage) {
    return Scaffold(
      appBar: AppBar(title: Text('first page')),
      body: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
        child: Text('Go to second page'),
        onPressed: () {
          Navigator.push(
              firstPage, MaterialPageRoute(builder: (context) => SecondPage()));
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext secondPage) {
    return Scaffold(
      appBar: AppBar(title: Text('Second page')),
      body: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
        child: Text('Go to second page'),
        onPressed: () {
          Navigator.pop(secondPage);
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => FirstPage()));
        },
      ),
    );
  }
}
