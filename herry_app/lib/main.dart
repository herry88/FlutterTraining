import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'page/page_ketiga.dart';
import 'page/page_keempat.dart';

void main() => runApp(HalamanUtama());

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : MenuHome(), debugShowCheckedModeBanner: false, //Menghapus banner debug
    );
  }
}

class MenuHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MenuHome'),
        backgroundColor: Colors.red,
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            new Text('Selamat Datang Di Flutter Ini Aplikasi saya',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18), ),
            SizedBox(height: 30,),
            //flat button
            // raised button
            //material button
            MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
              onPressed: (){
                  //tambah code disini
                Fluttertoast.showToast(
                    msg: "Aku Belajar Flutter",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },child: Text('Login'),
            ),
            MaterialButton(
              color: Colors.blueGrey,
              textColor: Colors.white,
              onPressed: (){
                //tambah code disini
                //navigator : pindah dari class A ke class B
                //push dan pop : pindah dari class B ke class A
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKedua()));
              },child: Text('Page 2'),
            ),
            MaterialButton(
              color: Colors.green,
              textColor: Colors.white,
              onPressed: (){
                //tambah code disini
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKetiga()));
              },child: Text('Page 3'),
            ),
            RaisedButton(
                onPressed: (){
                  //code here
                },
                color: Colors.lightGreen,
                child: Text('Page 4'),
            ),



          ],
        ),
      ),
    );
  }
}

//class MyGridView{
//  Card getStructuredGridCell(name, image){
//      return new Card(
//         elevation: 1.5,
//        child: new Column(
//          crossAxisAlignment:  CrossAxisAlignment.stretch,
//          mainAxisSize: MainAxisSize.min,
//          verticalDirection: VerticalDirection.down,
//          children: <Widget>[
//            new Image(image: new AssetImage('data_repo/img/' + image)),
//            new Center(
//                child: new Text(name),
//            )
//          ],
//        ),
//      );
//   }
//}
//GridView build(){
//  return new GridView.count(
//      primary: true,
//      padding: const EdgeInsets.all(1.0),
//      crossAxisCount: 2,
//      childAspectRatio: 0.85,
//      mainAxisSpacing: 1.0,
//      crossAxisSpacing: 1.0,
//      children: <Widget>[
//      getStructuredGridCell("Facebook", "social/facebook.png"),
//
//    ],
//
//  );
//
//}



class PageKedua extends StatelessWidget {
//  final MyGridView myGridView = new MyGridView();
  TextEditingController etNama = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Ini Adalah Page Kedua',
               style: TextStyle(color: Colors.white),),
      ),
      body: new Form(
          child: new Column(
            children: <Widget>[
              TextFormField(
                  controller: etNama,
                  decoration: InputDecoration(
                    hintText: 'Input Nama', 
                    labelText: 'Nama',
                    icon: Icon(Icons.person)
                  ),
              ),
              TextFormField(
                controller: etPassword,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    icon: Icon(Icons.security)
                ),
              ),
              SizedBox(height: 30.0,),
              MaterialButton(
                  onPressed: (){

                      if(etNama.text.isEmpty){
                        //tambahkan toast

                        return showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                content: Text('Username Tidak Boleh Kosong'),
                              );
                            }
                        );
                      }
                      else if(etPassword.text.isEmpty){
                        //tambahkantoast
                        return showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                content: Text('Password Tidak Boleh Kosong'),
                              );
                            }
                        );
                      } else{
                        //tampilkan hasil
                        return showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                content: Text('Username : ' + etNama.text + '  Password : '+ etPassword.text),
                              );
                            }
                        );
                      }
                  }, color: Colors.green, textColor: Colors.white, child: Text('Login'),
              ),
            ],
          )),
//      body: new Container(
//        child: new Center(
//          child: new Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: <Widget>[
//              new Icon(
//                  Icons.tram,
//                  size: 200.0,
//                  color: Colors.white,
//              ),
//              SizedBox(height: 90,),
//              new Text("Welcome To Page 2",
//                  style: new TextStyle(color: Colors.white),
//              ),
//              new Text("Get RealTime Update About what matters to you", style: TextStyle(color: Colors.white),),
//              MaterialButton(
//                color: Colors.white,
//                textColor: Colors.black,
//                minWidth: 250,
//                onPressed: (){
//                  //tambah code disini
//                  //navigator : pindah dari class A ke class B
//                  //push dan pop : pindah dari class B ke class A
//                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKetiga()));
//                },child: Text('Sign Up'),
//              ),
//              MaterialButton(
//                color: Colors.white,
//                minWidth: 250,
//                textColor: Colors.black,
//                onPressed: (){
//                  //tambah code disini
//                  //navigator : pindah dari class A ke class B
//                  //push dan pop : pindah dari class B ke class A
//                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKeempat()));
//                },child: Text('Login'),
//              ),
//            ],
//
//          ),
//        ),
//      ),
    );
  }
}

