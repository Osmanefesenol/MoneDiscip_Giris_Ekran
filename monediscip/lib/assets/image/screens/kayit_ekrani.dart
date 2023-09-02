// ignore: file_names
import 'package:flutter/material.dart';
import 'anasayfa.dart';

@override
Widget build(BuildContext context) {
  return const MaterialApp(
    home: KayitEkrani(),
  );
}

class KayitEkrani extends StatelessWidget {
  const KayitEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 300,
              left: 60,
              child: SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(color: Colors.black),
                    hintText: "adınız ve soyadınız",
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 380,
              left: 60,
              child: SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(color: Colors.black),
                    hintText: "şifre belirleyiniz",
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 460,
              left: 60,
              child: SizedBox(
                width: 300,
                height: 50,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                  hint: const Text("mesleğiniz"),
                  onChanged: (String? newValue) {
                    // Seçenek değiştiğinde yapılacak işlemler
                  },
                  items: <String>[
                    'Öğrenci',
                    'Öğretmen',
                    'Memur',
                    'Mühendis',
                    'Serbest İş',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            const Positioned(
              top: 550,
              left: 60,
              child: Text(
                "Cinsiyetiniz",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Positioned(
              top: 530,
              left: 60,
              child: SizedBox(
                width: 300,
                height: 50,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                  hint: const Text("cinsiyetiniz"),
                  onChanged: (String? newValue) {
                    // Seçenek değiştiğinde yapılacak işlemler
                  },
                  items: <String>[
                    'Erkek',
                    'Kadın',
                    'Belirtmek İstemiyorum',
                    'Diğer',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Positioned(
              height: 300,
              child: Image.asset(
                'lib/assets/image/Ekran Görüntüsü (64).png',
                width: 420,
                height: 100,
              ),
            ),
            Positioned(
              top: 630,
              left: 160,
              child: SizedBox(
                width: 100,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Anasayfa(),
                    ));
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: const BorderSide(color: Colors.blue),
                  ),
                  child: const Text(
                    "Kayıt Ol",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
