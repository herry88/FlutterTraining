import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:portalberita/Detail.dart';

void main() => runApp(new MaterialApp(
      title: "Berita Apps",
      home: new BeritaApp(),
      debugShowCheckedModeBanner: false,
    ));

class BeritaApp extends StatefulWidget {
  @override
  _BeritaAppState createState() => _BeritaAppState();
}

class _BeritaAppState extends State<BeritaApp> {
  Future<List> getData() async {
    final response = await http.get('http://172.10.2.9/berita/get_berita.php');
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resep Makanan"),
        backgroundColor: Colors.orange,
      ),
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? new ItemList(
                  list: snapshot.data,
                )
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) =>
                    new Detail(list: list, index: i))),
            child: new Card(
              child: new ListTile(
                title: new Text(
                  list[i]['judul_berita'],
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
                subtitle: new Text("Tanggal : ${list[i]['tgl_berita']}"),
                trailing: new Image.network(
                  'http://172.10.2.9/berita/images/' + list[i]['gambar_berita'],
                  fit: BoxFit.cover,
                  height: 60.0,
                  width: 60.0,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
