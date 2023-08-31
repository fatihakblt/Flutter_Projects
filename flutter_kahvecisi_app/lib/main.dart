import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyg());
}
class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'ADLaM Display'), // Programın varsayılan font tercihi
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/kahve.jpg'),
                radius: 90,
                backgroundColor: Colors.lime,
              ),
              Text(
                'Flutter Kahvecisi',
                style: TextStyle(
                  fontFamily: 'ADLaM Display',
                  fontSize: 35,
                  color: Colors.brown[900],
                ),
              ),
              Text(
                'BİR FİNCAN UZAĞINIZDA',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Container( // Dividerin genişlik parametresi olmadığı için container kullandık.
                width:200 ,
                child: Divider( // çizgi çekmek için divider kullanılır.
                  height:30,
                  color: Colors.brown[900],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                    horizontal: 45.0
                ),
                color: Colors.brown[900], // Container rengi ayarlandı.
                child: ListTile(leading:Icon( // Otomatik padding ayarlar.
                Icons.email,
                color: Colors.white,
                ),
                title:Text(
                'siparis@fkahvecisi.com',
                style: TextStyle(
                    color: Colors.white,
                ),
                ),
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                margin: EdgeInsets.symmetric(
                    horizontal: 45.0
                ),
                color: Colors.brown[900], // Container rengi ayarlandı.
                child: ListTile(
                  leading:Icon( // Otomatik padding ayarlar.(leading = icon + yazı şablonu)
                  Icons.phone,
                  color: Colors.white,
                ),
                  title:Text(
                    '+90 555 255 25 25',
                    style: TextStyle(
                        color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],
        ),
          ),
        ),
      ),
    );
  }
}
