import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'ListBerita.dart';
import 'PostBerita.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Drawer Layout Demo',
      debugShowCheckedModeBanner: false,
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
      home: new MyHomePage(title: 'Flutter Drawer Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Scaffold(
      appBar: AppBar(
        title: Text('Latihan Mobile Apps Herry'),
      ),
      body: new Center(

        child: new Text(
          'Ini halaman utama Jadi Silahkan di Klik aja ya!! ',
          style: TextStyle(fontSize: 30.0),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
          elevation: 20.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Herry Prasetyo'),
                accountEmail: Text('herryprasetyo@gmail.com'),
                currentAccountPicture: Image.network(
                    'https://pbs.twimg.com/profile_images/1053055123193122816/IUwo6l_Q_400x400.jpg'),
                decoration: BoxDecoration(color: Colors.blueAccent),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Halaman Login'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new LoginPage())),
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.accessibility),
                title: Text('List Berita'),

                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> new ListBerita())),
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.accessibility),
                title: Text('Posting Berita'),

                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> new PostingBerita())),
              ),
            ],
          )),
    ));
  }
}
