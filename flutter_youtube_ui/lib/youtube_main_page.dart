import 'package:flutter/material.dart';
// import 'package:flutter_youtube_ui/index.dart';

class YoutubeMainPage extends StatefulWidget {
  YoutubeMainPage({Key key}) : super(key: key);

  _YoutubeMainPageState createState() => _YoutubeMainPageState();
}

class _YoutubeMainPageState extends State<YoutubeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube UI"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
