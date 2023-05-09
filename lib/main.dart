import 'package:flutter/material.dart';
import 'package:hamiailem/gonullu_aile.dart';
import 'package:hamiailem/misafir_giris.dart';
import 'package:hamiailem/eslesilen_aile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // Bu widget uygulamanın köküdür.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Uygulama adı
      title: 'Flutter Merhaba Dünya',
      // Uygulama teması verileri, istediğiniz renkleri
      // uygulama için ayarlayabilirsiniz
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // Uygulama başlatıldığında başlatılacak widget
      home: MyHomePage(title: 'Ana Sayfa'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 2.0,
              color: Colors.black,
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GonulluAile()),
                );
                // Buraya ev sahibi girişiyle ilgili işlemler yapabilirsiniz
              },
              child: Text(
                'Gönüllü Aile Girişi',
                style: TextStyle(
                  fontSize: 24.0, // metin boyutunu buradan değiştirin
                  fontFamily: 'Arial Black', // yazı tipini buradan değiştirin
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.black, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Misafir()),
                );
                // Buraya misafir girişiyle ilgili işlemler yapabilirsiniz
              },
              child: Text(
                'Misafir Girişi',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Arial Black',
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.black, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              width: double.infinity,
              height: 2.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
