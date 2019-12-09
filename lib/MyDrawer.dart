import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Drewer Header'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text('list 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('list 2'),
              ),
              ListTile(
                title: Text('list 3'),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Drawer'),
        ),
        body: Builder(
          builder: (context) => Center(
            child: RaisedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text('메일이 삭제되었습니다.'),
                  action: SnackBarAction(label: '확인', onPressed: (){}),
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: Text('show snackBar!!'),
            ),
          ),
        ));
  }
}
