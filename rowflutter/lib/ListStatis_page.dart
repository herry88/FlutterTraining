import 'package:flutter/material.dart';
// import 'package:rowflutter/index.dart';

class ListStatisPage extends StatelessWidget {
  static const String routeName = "/listStatis";

  @override
  Widget build(BuildContext context) {
    // var _listStatisBloc = new ListStatisBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lists Statis"),
        backgroundColor: Colors.grey,
      ),
      // body: new ListStatisScreen(listStatisBloc: _listStatisBloc),
    );
  }
}
