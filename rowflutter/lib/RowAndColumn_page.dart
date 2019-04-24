import 'package:flutter/material.dart';
// import 'package:rowflutter/index.dart';

class RowAndColumnPage extends StatefulWidget {
  RowAndColumnPage({Key key}) : super(key: key);

  _RowAndColumnPageState createState() => _RowAndColumnPageState();
}

class _RowAndColumnPageState extends State<RowAndColumnPage> {
  @override
  Widget build(BuildContext context) {
    var colors = Colors;
    return Scaffold(
       appBar: AppBar(
         title: Text('Row Column Page'),
         backgroundColor: Colors.red,
       ),
       body: new Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
             new Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 new Text('Home', style: TextStyle(fontSize: 20.0),),
                 new Icon(Icons.home, color: Colors.blue, size: 50.0,), 

               ],
             ),
             new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   new Text('Email',style: TextStyle(fontSize: 20.0),),
                   new Icon(Icons.email,color: Colors.red, size: 50,),
                    
                ],
             ),
             new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('Apps', style: TextStyle(fontSize: 20.0),), 
                  new Icon(Icons.apps, color: Colors.brown, size: 50,),
                ],
             ),
           ],
         ),
       ),
    );
  }
}
