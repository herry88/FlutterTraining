import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Using tab",
    home: new MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TabController controller;

  @override
  void initState(){
    super.initState();

    //initialize the Tab Controller 
     controller = new TabController(length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
       child: child,
    );
  }
}