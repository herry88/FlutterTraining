import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/youtube_main_page.dart';
// import 'youtube_main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Youtube UI",
      home: YoutubeMainPage(),
    );
  }
}