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
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 45.0
                ),
                padding: EdgeInsets.all(10.0),
                color: Colors.brown[900], // Container rengi ayarlandı.
                child: Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.yellow,
                  ),
                  SizedBox( // İcon ile tekxt arası boşluk bırakmak için kullanıldı.
                    width: 10.0,
                  ),
                  Text(
                    'Sipariş@fkahvecisi.com',
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 20.0
                    ),
                  ),
                ],
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 45.0
                ),
                padding: EdgeInsets.all(10.0),
                color: Colors.brown[900], // Container rengi ayarlandı.
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.yellow,
                    ),
                    SizedBox( // İcon ile tekxt arası boşluk bırakmak için kullanıldı.
                      width: 10.0,
                    ),
                    Text(
                      '+90 555 255 25 25',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                      ),
                    ),
                  ],
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


