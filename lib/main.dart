import 'package:flutter/material.dart';
import 'home.dart';
import 'chat.dart';
import 'cloud.dart';
import 'group.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final titleString = "Multiple Tabs";

  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(title: new Text("This is title of appBar"),
            bottom: new TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 3.0,
                tabs: [
              new Tab(
                icon: new Icon(Icons.home),
                text: "Home",
              ),
              new Tab(
                icon: new Icon(Icons.group),
                text: "Group",
              ),
              new Tab(
                icon: new Icon(Icons.chat_bubble),
                text: "Chat",
              ),
              new Tab(
                icon: new Icon(Icons.cloud_queue),
                text: "Cloud",
              )
            ]),
          ),
          body: new TabBarView(children: [
             new MyHome(),
            new MyGroup(),
            new MyChat(),
            new MyClound()
          ]),
        ));

    return new MaterialApp(
      title: titleString,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titleString),
        ),
        body: tabController,
      ),
    );
  }
}
