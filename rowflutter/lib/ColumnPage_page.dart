import 'package:flutter/material.dart';
// import 'package:rowflutter/index.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Page'),
        backgroundColor: Colors.red,
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text('PHP WebDeveloper', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),), 
            new Text('Mobile Apps', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
            new Text('Laravel', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

