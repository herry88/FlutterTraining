import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: FlutterCustomGrid(),
      debugShowCheckedModeBanner: false,
    ));

class FlutterCustomGrid extends StatefulWidget {
  FlutterCustomGrid({Key key}) : super(key: key);

  _FlutterCustomGridState createState() => _FlutterCustomGridState();
}

class _FlutterCustomGridState extends State<FlutterCustomGrid> {
  //deklarasi data list
  List<Container> daftarbuah = new List();
  var dataBuah = [
    {"nama": "Buah Apel", "gambar": "apel_1.jpg"},
    {"nama": "Buah Apel", "gambar": "apel.jpeg"},
    {"nama": "Buah durian montong", "gambar": "durian-montong.jpg"},
    {"nama": "Buah Jeruk", "gambar": "jeruk_1.jpg"},
    {"nama": "Buah Jeruk", "gambar": "jeruk.jpg"},
    {"nama": "Buah Matoa", "gambar": "matoa.jpg"},
    {"nama": "Buah Naga", "gambar": "naga.jpg"},
    {"nama": "Buah Pepaya", "gambar": "papaya.jpg"},
    {"nama": "Buah Pir Hijai", "gambar": "pir-hijau.jpg"},
    {"nama": "Buah pisang", "gambar": "pisang.jpg"},
  ];

  //buah method untuk memanggil data list buah
  _listDataBuah() async {
    for (var i = 0; i < dataBuah.length; i++) {
      final datanya = dataBuah[i];
      final String gambar = datanya['gambar'];

      daftarbuah.add(new Container(
        child: new Column(
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            DetailGrid(nama: datanya['nama'], gambar: gambar)));
                  },
                  child: new Hero(
                    tag: datanya['nama'],
                    child: new Image.asset('gambar/$gambar',
                        height: 100.0, width: 100.0, fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            new Text(
              datanya['nama'],
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ));
    }
  }

//init state berfungsi untuk mengekusi method agar di tampilkan ke view saat main.dart di jalankan
  @override
  void initState() {
    //ToDo : implement initstate
    _listDataBuah();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Grid'),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarbuah,
      ),
    );
  }
}
