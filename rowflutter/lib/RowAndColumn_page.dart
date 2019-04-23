import 'package:flutter/material.dart';
// import 'package:rowflutter/index.dart';

class RowAndColumnPage extends StatelessWidget {
  // static const String routeName = "/rowAndColumn";

  @override
  Widget build(BuildContext context) {
    // var _rowAndColumnBloc = new RowAndColumnBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RowAndColumn"),
        backgroundColor: Colors.brown,
      ),
      // body: new RowAndColumnScreen(rowAndColumnBloc: _rowAndColumnBloc),
    );
  }
}
