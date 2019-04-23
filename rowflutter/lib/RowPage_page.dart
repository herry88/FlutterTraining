import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Page'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Icon(Icons.home, size: 100.0,), 
            new Icon(Icons.person, size: 100.0,), 
            new Icon(Icons.apps, size: 100.0,)
          ],
        ),
      ),
    );
  }
}
