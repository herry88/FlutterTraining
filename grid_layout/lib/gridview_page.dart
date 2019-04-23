import 'package:flutter/material.dart';
import 'package:grid_layout/index.dart';

class GridviewPage extends StatelessWidget {
  static const String routeName = "/gridview";

  @override
  Widget build(BuildContext context) {
    var _gridviewBloc = new GridviewBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Gridview"),
      ),
      body: new GridviewScreen(gridviewBloc: _gridviewBloc),
    );
  }
}
