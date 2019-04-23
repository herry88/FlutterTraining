import 'package:flutter/material.dart';

//void main() => runApp(MyHome());
void main() {
  runApp(new MaterialApp(
    home: new MyHome(), debugShowCheckedModeBanner: false,
  ));
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  //General Dialog
  // Generate dialog
  AlertDialog dialog = new AlertDialog(
      content: new Text(
        "Herry Prasetyo",
        style: new TextStyle(fontSize: 30.0),
      ));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Using Alert Dialog"),
        ),
        body: new Container(
          child: new Center(
            child: new RaisedButton(
                child: new Text("Hit to alert!"),
                // On press of the button
                onPressed: () {
                  // Show dialog
                  showDialog(context: context, builder: (BuildContext context) => dialog);
                }),
          ),
        ));
  }
}
