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
    {"nama": "Buah Apel", "gambar": "apel.jpeg"},
    {"nama": "Buah durian montong", "gambar": "durian-montong.jpg"},
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

class DetailGrid extends StatelessWidget {
  final String nama, gambar;
  DetailGrid({this.nama, this.gambar});
  // const DetailGrid({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child: Hero(
              tag: nama,
              child: Material(
                child: InkWell(
                  child: Image.asset(
                    'gambar/$gambar',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          new BagianNama(
            nama: nama,
          ),
          new BagianIcon(),
          new BagianKeterangan()
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  final String nama;
  // const BagianNama({Key key}) : super(key: key);
  BagianNama({this.nama});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          new Text(
            nama,
            style: TextStyle(fontSize: 20.0, color: Colors.green),
          ),
          new Text(
            '$nama\@gmail.com',
            style: TextStyle(fontSize: 17.0, color: Colors.grey),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.red,
              ),
              new Text(
                '15',
                style: TextStyle(fontSize: 18.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BagianIcon extends StatelessWidget {
  const BagianIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new IconTeks(iconData: Icons.call, teks: 'Call'),
          new IconTeks(iconData: Icons.message, teks: 'Message'),
          new IconTeks(iconData: Icons.photo, teks: 'photo')
        ],
      ),
    );
  }
}

class IconTeks extends StatelessWidget {
  // const IconTeks({Key key}) : super(key: key);
  final IconData iconData;
  final String teks;
  IconTeks({this.iconData, this.teks});

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(iconData, size: 20.0, color: Colors.green),
          new Text(teks, style: TextStyle(fontSize: 12.0, color: Colors.green))
        ],
      ),
    );
  }
}

class BagianKeterangan extends StatelessWidget {
  const BagianKeterangan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet sollicitudin dolor. Suspendisse rutrum nisi felis, vitae cursus nunc bibendum at. Aliquam erat volutpat. Aenean nec semper velit. Pellentesque et nisi vulputate, faucibus nibh non, tincidunt risus. Donec purus erat, varius nec porta nec, pellentesque eu lorem. Duis auctor sem eget nisl cursus maximus. Vestibulum eget dolor nec risus ultricies aliquet pharetra at lectus. Vivamus sagittis hendrerit laoreet. Duis in neque leo. Sed nulla nunc, cursus sit amet cursus vitae, euismod at lacus. Nam ut ullamcorper nunc. Nunc consectetur elit nec elit vulputate iaculis. In vitae ante ac ipsum ornare bibendum. Aenean eget quam eleifend, condimentum nunc sit amet, faucibus elit.",
            style: new TextStyle(fontSize: 14.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}


