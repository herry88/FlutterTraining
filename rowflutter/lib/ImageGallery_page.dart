import 'package:flutter/material.dart';
// import 'package:rowflutter/index.dart';

class ImageGalleryPage extends StatelessWidget {
  static const String routeName = "/imageGallery";

  @override
  Widget build(BuildContext context) {
    // var _imageGalleryBloc = new ImageGalleryBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ImageGallery"),
        backgroundColor: Colors.deepPurple,
      ),
      // body: new ImageGalleryScreen(imageGalleryBloc: _imageGalleryBloc),
      body: new Center(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Text(
                  'Semeru',
                  style: TextStyle(fontSize: 20.0),
                ),
                // SizedBox(9),
                //ambil gambar dari network
                new Image.network(
                  'https://upload.wikimedia.org/wikipedia/id/c/c2/GBMS_Premium_At_Cipinang.jpg',
                  fit: BoxFit.cover,
                  width: 400.0,
                  height: 400.0,
                ),
                Divider(),
                new Image.asset(
                  'gambar/bromo.jpeg',
                  fit: BoxFit.cover,
                  width: 400.0,
                  height: 400.0,
                ),
                Divider(),
                new Image.asset(
                  'gambar/merbabu.jpg',
                  fit: BoxFit.cover,
                  width: 400.0,
                  height: 400.0,
                ),
              ],
            ),
            new Divider(),
            SingleChildScrollView(
               scrollDirection: Axis.horizontal,
                child: new Row(
                  
                children: <Widget>[
                 
                  // SizedBox(9),
                  new Image.asset(
                    'gambar/semeru.jpg',
                    fit: BoxFit.cover,
                    width: 400.0,
                    height: 400.0,
                  ),
                  Padding(padding: EdgeInsets.only(right: 10.0),),
                  new Image.asset(
                    'gambar/bromo.jpeg',
                    fit: BoxFit.cover,
                    width: 400.0,
                    height: 400.0,
                  ),
                  Padding(padding: EdgeInsets.only(right: 10.0),),
                   new Image.asset(
                    'gambar/merbabu.jpeg',
                    fit: BoxFit.cover,
                    width: 400.0,
                    height: 400.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
