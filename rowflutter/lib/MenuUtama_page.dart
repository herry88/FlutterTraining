import 'package:flutter/material.dart';
// import 'package:rowflutter/index.dart';

class MenuUtamaPage extends StatefulWidget {
  MenuUtamaPage({Key key}) : super(key: key);

  _MenuUtamaPageState createState() => _MenuUtamaPageState();
}

class _MenuUtamaPageState extends State<MenuUtamaPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
            title: Text("Menu Utama"),
         ),
         body: new Center(
           
           child: Text('Selamat Datang Di Menu Utama', style :TextStyle(fontSize:30.0), textAlign: TextAlign.center,),
         ),
         drawer: Drawer(
           child: ListView(
             children: <Widget>[
               ListTile(
                 title: Text('Row'),
                 leading: Icon(Icons.list),
                 onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> new RowPage())),
               ),
               ListTile(
                 title: Text('Column'),
                 leading: Icon(Icons.person),
               ), 
               ListTile(
                 title: Text('Row And Column'),
                 leading: Icon(Icons.star),
               )
             ],
           ),
         ),
       ),
    );
  }
}
