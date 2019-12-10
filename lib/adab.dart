import 'package:flutter/material.dart';

class TampilHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adab kepada guru"),
      ), //AppBar

      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              '1.Salam jika bertemu',
              'Dalam islam kita di perintahkan untuk salam jika bertemu dengan muslim lainnya, begitu pula dengan guru yang kita temui'),
          _createPageItemUI(
              '2.Mendengarkan jika menjelaskan',
              'Ketika guru sedang menjelaskan kita harus mendengarkan dengan baik karena itu termasuk sopan santun terhadap guru.'),
          _createPageItemUI(
              '3.Mendoakan dia',
              'Sebagai seorang murid kita harus mendoakan yang baik untuk gurunya karena dia telah memberika sebuah ilmu yang banyak dan dia terus bersabar dengan segala perbuatan yang telah kita lakukan.'),
          _createPageItemUI(
              '4.Jangan ngomogin guru',
              'pada saat kita sedang ngomongin kejelakan guru tersebut kita akan mendapatkan sebuah dosa yang berat yaitu "GHIBAH", dalam islam ghiba adalah perbuatan yang sangat dibenci allah.'),
          _createPageItemUI(
              '5.Memberikan hadiah',
              'Buatlah guru kalian menjadi senang dengan memberikannya hadiah berupa apapun itu yang bisa membuat dia senang'),
        ],
      ), //PageView
    ); //Sccafold
  }
}

_createPageItemUI(String nama, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[

        SizedBox(
          height: 20.0,
        ), //SizedBox

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(nama,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ), //Padding

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            deskripsi,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}