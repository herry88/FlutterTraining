import 'package:flutter/material.dart';

class PageKeempat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Ini Adalah halaman Ketiga'),
        backgroundColor: Colors.blue,
      ),
      body: new Column(
        children: <Widget>[

          new TextField(
            cursorWidth: 1,

            decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: 'Email',
                labelText: 'Email'
            ),
          ),
          new TextField(
            cursorWidth: 1,
            obscureText: true,
            decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                labelText: 'Password'
            ),
          ),
          MaterialButton(
            color: Colors.white,
            minWidth: 250,
            textColor: Colors.black,
            onPressed: (){
              //tambah code disini
              //navigator : pindah dari class A ke class B
              //push dan pop : pindah dari class B ke class A
//                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKedua()));
            },child: Text('Login'),
          ),
          new Text('Forgot Password')
        ],
      ),
    );
  }
}
