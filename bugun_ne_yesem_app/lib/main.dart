import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'BUGUN NE YESEM?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatelessWidget {
  const YemekSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/corba_1.jpg'),
          )), // Expanded widgeti  çocuğunu uygun alanı (extra alanı) dolduracak kadar büyüterek esnetir.
          Expanded(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/yemek_1.jpg'),
          )), // Widgetlerde Expanded ve flex uygulayabilmek için widgetların kardeş olması gerekir.
          Expanded(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/tatli_1.jpg'),
          ),
          ), // Burada kullanılan Expanded widgetleri kullanılan alandaki resimleri kardeş payı yaparak yerleştirir.
        ],
      ),
    );
  }
}
