import 'package:flutter/material.dart';
import 'page/passing_value_page.dart';
import 'page/return_value_page_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(), debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            MaterialButton(
                onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>PassingValue()));
                }, child: Text('Passing Value'), color: Colors.green, textColor: Colors.white,
            ),
            MaterialButton(
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                }, child: Text('Return Value'), color: Colors.lightGreen, textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}