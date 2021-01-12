import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff3DB26E),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/1.jpg"),
                        radius: 25.0,
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 35.0,
                      )
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Row(children: [
                    Text('Medicine Reminder',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          letterSpacing: .5,
                        ))
                  ]),
                  SizedBox(height: 20.0),
                  Divider(
                    height: 20.0,
                    thickness: 2.0,
                    color: Color(0xff57C382),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Text(
                          "This week",
                          style: TextStyle(
                              color: Color(0xff3DB26E), fontSize: 15.0),
                        ),
                      ),
                      Text(
                        "This month",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 15.0),
                      ),
                      Text(
                        "This year",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MyTabBar()
                ],
              ),
            )
          ],
        )));
  }
}

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DefaultTabController(
        length: 3,
        child:
            TabBar(indicator: BoxDecoration(color: Colors.transparent), tabs: [
          Tab(
            child: Text(
              'Today',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              'Tomorrow',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              'After',
              style: TextStyle(color: Colors.black),
            ),
          )
        ]),
      ),
    );
  }
}
