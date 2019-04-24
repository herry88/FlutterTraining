import 'package:flutter/material.dart';
// import 'package:rowflutter/index.dart';

class ListStatisPage extends StatelessWidget {
  // static const String routeName = "/listStatis";

  @override
  Widget build(BuildContext context) {
    // var _layoutPageBloc = new LayoutPageBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("LayoutPage"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Mail'),
           
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
        ],
      ),
      // body: new LayoutPageScreen(layoutPageBloc: _layoutPageBloc),
    );
  }
}
