import 'package:flutter/material.dart';

class HesapOlustur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool yukleniyor = false;
    return Scaffold(
     appBar: AppBar(
       title: Text("Hesap Oluştur")
     ),
      body: ListView(
        children: <Widget>[
          yukleniyor ? LinearProgressIndicator( ) : SizedBox(height: 0.0), 
          SizedBox(height:20.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(child: Column(children: [
              TextFormField(
              autocorrect: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Kullanıcı adınızı giriniz",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                labelText: "Kullanıcı Adı:",
                errorStyle: TextStyle(fontSize: 16.0),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.red[400],
                ),
              ),
              validator: (girilenDeger) {
                if (girilenDeger.isEmpty) {
                  return "Kullanıcı adı alanı boş bırakılamaz!";
                } else if (girilenDeger.trim().length < 3 || girilenDeger.trim().length > 10) {
                  return "En az 4 en fazla 10 karakter olabilir.";
                }
                return null;
              },
            ),
              
              TextFormField(
              autocorrect: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email adresinizi giriniz",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                 labelText: "Mail:",
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
              height: 10.0,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Şifrenizi giriniz",
                hintStyle: TextStyle(color: Colors.black),
                 labelText: "Şifre:",
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

            TextFormField(
              autocorrect: true,
              
              decoration: InputDecoration(
                hintText: "Adresinizi giriniz",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                 labelText: "Adres:",
                errorStyle: TextStyle(fontSize: 16.0),
                prefixIcon: Icon(
                  Icons.home,
                  color: Colors.red[400],
                ),
              ),
              validator: (girilenDeger) {
                if (girilenDeger.isEmpty) {
                  return "Adres alanı boş bırakılamaz!";
                } else if (girilenDeger.trim().length > 10) {
                  return "Adres 10 karakterden az olamaz";
                }
                return null;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
SizedBox(height: 50.0),
            Container(
              width: double.infinity,
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
            ],)),
          )

      ],
      ),
    );
  }
}