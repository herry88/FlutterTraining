import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  List list;
  int index;
  Detail({this.list, this.index});
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.list[widget.index]['judul_berita']}'),
        backgroundColor: Colors.green,
      ),
      body: new ListView(
        children: <Widget>[
          new Image.network("http://172.10.2.9/berita/images/" +widget.list[widget.index]['gambar_berita']),
          new Container(
            padding: const EdgeInsets.all(32.0),
            child: new Row(
              children:[
                new Expanded(child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: new Text(
                        "Judul :" + widget.list[widget.index]['judul_berita'],
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Text(
                      "Tanggal : " + widget.list[widget.index]['tgl_berita'],
                      style: new TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                )),
                new Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
              ],
            ),
          ),
          new Container(
            padding: const EdgeInsets.all(32.0),
            child: new Text(
              widget.list[widget.index]['isi_berita'],
              softWrap: true,
            ),
          ),
        ],
      ),
    );

  }
}
