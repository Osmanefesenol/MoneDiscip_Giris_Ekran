import 'package:flutter/material.dart';

class Danisman extends StatelessWidget {
  const Danisman({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double devicewidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: devicewidth,
            height: deviceHeight,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Color.fromARGB(255, 88, 86, 86)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  
                  height: 400, // İlk resmin yüksekliği
                  width: 2000, // İlk resmin genişliği
                  child: Image.asset(
                    'lib/assets/image/danisman.png',
                    width: 200, // İlk resmin özelleştirilmiş genişliği
                    height: 200, // İlk resmin özelleştirilmiş yüksekliği
                  ),
                ),
                SizedBox(
                  height: 200, // İkinci resmin yüksekliği
                  width: 1000, // İkinci resmin genişliği
                  child: Image.asset(
                    'lib/assets/image/Ekran Görüntüsü (67).png',
                    width: 300, // İkinci resmin özelleştirilmiş genişliği
                    height: 300, // İkinci resmin özelleştirilmiş yüksekliği
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