import 'package:flutter/material.dart';
import 'package:flutter_market/hesapolustur.dart';
import 'package:flutter_market/main.dart';

class GirisSayfasi extends StatefulWidget {
  @override
  _GirisSayfasiState createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  final _formAnahtari = GlobalKey<FormState>();
  bool yukleniyor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
       title: Text("Giriş yap")
     ),
        body: Stack(
          children: <Widget>[
            _sayfaElemanlari(),
            _yuklemeAnimasyonu(),
          ],
        ));
  }
  Widget _yuklemeAnimasyonu(){
    if (yukleniyor) {
      return Center(child: CircularProgressIndicator());
    } else{
      return Center();
    }
  }

Widget _sayfaElemanlari() {
    return Form(
    key: _formAnahtari,
    child: ListView(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 150.0),
        children: <Widget>[
          TextFormField(
            autocorrect: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email adresinizi giriniz",
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              errorStyle: TextStyle(fontSize: 16.0),
              prefixIcon: Icon(
                Icons.mail,
                color: Colors.red[400],
              ),
            ),
            validator: (girilenDeger) {
              if (girilenDeger.isEmpty) {
                return "Email alanı boş bırakılamaz!";
              } else if (!girilenDeger.contains("@")) {
                return "Girilen değer mail formatında olmalı!";
              }
              return null;
            },
          ),
          SizedBox(
            height: 40.0,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Şifrenizi giriniz",
              hintStyle: TextStyle(color: Colors.black),
              errorStyle: TextStyle(fontSize: 16.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.red[400],
              ),
            ),
            validator: (girilenDeger) {
              if (girilenDeger.isEmpty) {
                return "Şifre alanı boş bırakılamaz!";
              } else if (girilenDeger.trim().length < 3) {
                return "Şifre 3 karakterden az olamaz!";
              }
              return null;
            },
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HesapOlustur()));
                },
                child: Text(
                  "Hesap Oluştur",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                color: Colors.red[400],
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: FlatButton(
                onPressed: _girisYap,
                child: Text(
                  "Giriş Yap",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                color: Colors.red[400],
              ),
            ),
          ],
          ),
          SizedBox(height:20.0),
          Center(child: Text("Veya")),
          SizedBox(height:20.0),
          Center(child: Text("Google ile giriş yap", style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold, ),)),
          
        ]),
  );
  }

  void _girisYap() {
    if (_formAnahtari.currentState.validate()) {
     setState(() {
       yukleniyor = true;
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AnaSayfa()));
     });
    }
  }
}
