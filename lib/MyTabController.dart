import 'package:flutter/material.dart';

class MyTabController extends StatefulWidget {
  @override
  _MyTabControllerState createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text('MyTabController'),
          bottom: TabBar(tabs: <Widget>[
            Tab(icon: Icon(Icons.access_alarm), text: 'alarm',),
            Text('tab2'),
            Text('tab3'),
          ],),
        ),
        body: Container(),
      ),
      length: 3,
    );
  }
}
