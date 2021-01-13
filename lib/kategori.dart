import 'package:flutter/material.dart';
import 'package:flutter_market/urun_Detay.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe;

  @override
  void initState() {
    super.initState();

    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        urunKarti("Zeytin yağı", "20 TL",
            "https://cdn.pixabay.com/photo/2015/10/02/15/59/olive-oil-968657__340.jpg",
            mevcut: true),
        urunKarti("Tuz", "10 TL",
            "https://media.istockphoto.com/photos/sea-salt-picture-id1197314160?b=1&k=6&m=1197314160&s=170667a&w=0&h=lW2BTnGNthMhDkq27UMmKUMdJ7KS1Lyl51JOx8k7K3A="),
        urunKarti("Yumurta", "10 TL",
            "https://cdn.pixabay.com/photo/2015/09/17/17/19/egg-944495__340.jpg"),
        urunKarti("Makarna", "7 TL",
            "https://cdn.pixabay.com/photo/2010/12/13/10/00/pasta-2093__340.jpg"),
        urunKarti("Et", "25 TL",
            "https://media.istockphoto.com/photos/raw-t-bone-steak-on-wooden-board-prepared-to-grill-picture-id1270749753?b=1&k=6&m=1270749753&s=170667a&w=0&h=zhHBPLzuV-KYPGgCGLa3HElyeJN1C8HRaiaChmw3elo="),
      ];
    } else if (widget.kategori == "Şeker") {
      gosterilecekListe = [
        urunKarti("Kurabiye", "10 TL",
            "https://media.istockphoto.com/photos/butter-toffee-crunch-chocolate-chip-cookies-picture-id1182279813?b=1&k=6&m=1182279813&s=170667a&w=0&h=GHNn5vbPdUHkLSzR0OBGjglbwfbgVnfn4wIwEiEk0w0="),
        urunKarti("Dondurma", "8 TL",
            "https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-cone-1274894__340.jpg"),
        urunKarti("Donut", "10 TL",
            "https://media.istockphoto.com/photos/colorful-sweet-background-delicious-glazed-donuts-on-pink-background-picture-id1157621780?b=1&k=6&m=1157621780&s=170667a&w=0&h=DdW_VuDD8dJz_CQYCSCfU7E2rGzkuVdN2nNUwFVcycU="),
        urunKarti("Çikolata", "20 TL",
            "https://cdn.pixabay.com/photo/2017/02/11/14/19/valentines-day-2057745__340.jpg"),
        urunKarti("Popkek", "5 TL",
            "https://cdn.pixabay.com/photo/2016/06/12/15/03/cupcakes-1452178__340.jpg"),
      ];
    } else if (widget.kategori == "İçecekler") {
      gosterilecekListe = [
        urunKarti("Süt", "5 TL",
            "https://media.istockphoto.com/photos/buyer-hands-with-bottle-of-milk-at-grocery-picture-id1020114870?b=1&k=6&m=1020114870&s=170667a&w=0&h=GZt0TSuU64Ebduxf_ocnduJL1rL3_QOjJTd3HDoipHY="),
      ];
    } else if (widget.kategori == "Temizlik") {
      gosterilecekListe = [
        urunKarti("Çamaşır Deterjanı", "15 TL",
            "https://cdn.pixabay.com/photo/2019/03/22/12/24/detergent-4073138__340.jpg"),
        urunKarti("Sıvı Sabun", "10 TL",
            "https://cdn.pixabay.com/photo/2020/09/05/02/00/soap-5545364__340.png"),
        urunKarti("Bulaşık Deterjanı", "16 TL",
            "https://cdn.pixabay.com/photo/2013/07/13/13/34/bottle-161116__340.png"),
      ];
    } else if (widget.kategori == "Meyve") {
      gosterilecekListe = [
        urunKarti("Elma", "5 TL",
            "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537__340.jpg"),
        urunKarti("Çilek", "10 TL",
            "https://cdn.pixabay.com/photo/2017/11/18/17/09/strawberry-2960533__340.jpg"),
        urunKarti("Nar", "8 TL",
            "https://cdn.pixabay.com/photo/2018/05/08/20/19/pomegranate-3383814__340.jpg"),
        urunKarti("Muz", "14 TL",
            "https://cdn.pixabay.com/photo/2016/01/03/17/59/bananas-1119790__340.jpg"),
        urunKarti("Limon", "5 TL",
            "https://cdn.pixabay.com/photo/2015/11/05/18/56/lemon-1024641__340.jpg"),
        urunKarti("Mandalina", "7 TL",
            "https://cdn.pixabay.com/photo/2016/10/07/14/11/tangerines-1721633__340.jpg"),
        urunKarti("Şeftali", "12 TL",
            "https://cdn.pixabay.com/photo/2017/08/02/22/46/peach-2573836__340.jpg"),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      isim: isim,
                      fiyat: fiyat,
                      resimYolu: resimYolu,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 120.0,
              height: 80.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resimYolu),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            SizedBox(height: 8.0),
            Text(isim,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600])),
            SizedBox(height: 8.0),
            Text(fiyat,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400]))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1,
      children: gosterilecekListe,
    );
  }
}
