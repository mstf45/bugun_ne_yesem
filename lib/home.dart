import 'dart:math';

import 'package:flutter/material.dart';

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuk Suyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazan Dibi',
    'Dondurma',
  ];

  void yemekleriYenile() {
    setState(() {
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      corbaNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: MaterialButton(
                color: Colors.yellow,
                highlightColor: Colors.red,
                splashColor: Colors.black,
                onPressed: yemekleriYenile,
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: const TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: const Divider(
              height: 5,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: MaterialButton(
                color: Colors.red,
                highlightColor: Colors.yellow,
                splashColor: Colors.black,
                onPressed: yemekleriYenile,
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: const TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: const Divider(
              height: 5,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: MaterialButton(
                color: Colors.amberAccent,
                highlightColor: Colors.lightGreen,
                splashColor: Colors.black,
                onPressed: yemekleriYenile,
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
