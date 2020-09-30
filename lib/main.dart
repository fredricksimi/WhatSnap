import 'package:flutter/material.dart';
import './status.dart';
import './home.dart';
import 'calls.dart';
import 'camera.dart';

void main() {
  runApp(MaterialApp(
    title: 'WhatSnap',
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBar(
              indicatorColor: Colors.teal,
              // currentIndex: 1,
              // labelColor

              unselectedLabelColor: Colors.white,

              // selectedItemColor: Colors.blue,
              // type: BottomNavigationBarType.fixed,
              // backgroundColor: Colors.transparent,
              // unselectedItemColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.comment)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.blur_circular)),
                Tab(icon: Icon(Icons.phone)),
              ],
            ),
          ),
          backgroundColor: Colors.black,
          body: TabBarView(
            children: [HomePage(), CameraPage(), StatusPage(), CallsPage()],
          )),
    );
  }
}
