import 'package:flutter/material.dart';
import 'package:flutter_market/GirisSayfasi.dart';

import 'package:flutter_market/sepetim.dart';
import 'package:flutter_market/urunler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proje',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
            
            image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/236x/1c/a8/c3/1ca8c3dedf2825193e292abb9548f4a8.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
         Padding(
           padding: const EdgeInsets.only( top:305.0),
           child: Center(
             
             
               child: FlatButton(
                 
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => GirisSayfasi()));
                          },
                        
                          child: Text(
                            "Alışverişe Başla",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          
                          color: Colors.red[400],
                        ),
             ),
           ),
         
        

        Form(
          key: key,
          child: Container(
            padding: EdgeInsets.only(left:20.0, right: 20.0, top:450.0),
            child: Wrap(
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: MediaQuery.of(context).size.height * .1,
                  
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



class AnaSayfa extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AnaSayfa> {
  int _IcerikNo = 0;
  List<Widget> _icerikler;

  @override
  void initState() {
    super.initState();
    _icerikler = [
      Urunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[400]),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          " Market",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
      body: _icerikler[_IcerikNo],
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Deneme"),
                accountEmail: Text("Deneme@gmail.com"),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2014/03/25/16/54/user-297566__340.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.red[400]),
              ),
              ListTile(
                title: Text("Siparişlerim"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Hesap Bilgileirm"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Ayarlar"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Çıkış yap"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _IcerikNo,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Ürünler")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("Sepetim"))
        ],
        onTap: (int tiklananButonNo) {
          setState(() {
            _IcerikNo = tiklananButonNo;
          });
        },
      ),
    );
  }
}
