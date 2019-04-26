import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/logo.png'),
      ),
    );
    
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
//      initialValue: 'herryprasetyo@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email', 
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      controller: _email,
    );

    final password = TextFormField(
      autofocus: false,
//      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      controller: _password,
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
              if(_email.text.isEmpty){
                  return showDialog(context: context, builder: (context){
                    return AlertDialog(
                      content: Text('Email Belum Terisi'),
                    );
                   });
              }
              else if(_password.text.isEmpty){
                  return showDialog(context: context,
                    builder: (context){
                        return AlertDialog(
                          content: Text('Password harus terisi'),
                        );
                    }
                  );
              }
              else{
                return showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        content: Text('Email : ' + _email.text + '  Deskripsi : '+ _password.text),
                      );
                    }
                );
              }
          },
          color: Colors.lightBlueAccent,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot Password',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: (){},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: new Form(

        child: Column(
          children: <Widget>[
            Center(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                children: <Widget>[
                  logo,
                  SizedBox(height: 30.0),
                  email,
                  SizedBox(height: 30.0),
                  password,
                  SizedBox(height: 20.0),
                  loginButton,
                  forgotLabel
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

