import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutera",
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
          title: Text("User profile"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          elevation: 5.0,
          actions: [
            IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  print('hi');
                }),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('yup');
                })
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular((10.0)))),
                  accountName: Text("홍길동"),
                  accountEmail: Text("test@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/1.jpg"),
                  ),
                  onDetailsPressed: () {
                    print('arrow clicked');
                  },
                  otherAccountsPictures: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/2.jpg",
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    )
                  ]),
              ListTile(
                leading: Icon(Icons.home, color: Colors.grey[900]),
                title: Text('Home'),
                onTap: () {
                  print('home clicked');
                },
              ),
              ListTile(
                autofocus: true,
                title: Text('My account'),
                leading: Icon(Icons.radio_button_on),
              ),
              ListTile(
                  dense: true,
                  title: Text('Inquiry'),
                  leading: Icon(Icons.youtube_searched_for))
            ],
          ),
        ),
        body: Center(
            child: TextButton(
          child: Text(
            'Show me',
            style: TextStyle(color: Colors.pink),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Hellow world'),
            ));
            // ScaffoldMessenger.showSnackBar()
          },
        )));
  }
}
