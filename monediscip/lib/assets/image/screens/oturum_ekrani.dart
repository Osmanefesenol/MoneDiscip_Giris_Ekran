import 'package:flutter/material.dart';
import 'anasayfa.dart';


@override
Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: oturumekrani(),
  );
}

// ignore: camel_case_types
class oturumekrani extends StatelessWidget {
  const oturumekrani({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Positioned(
              top: 455,
              left: 55,
              child: Text(
                "* bu alan zorunludur !",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Positioned(
              top: 400,
              left: 60,
              child: SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(color: Colors.black),
                    hintText: "parola",
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
            const Positioned(
              top: 355,
              left: 55,
              child: Text(
                " * bu alan zounludur ! ",
                style: TextStyle(color: Colors.black),
              ),
            ),
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
                    hintText: "e-posta",
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
              height: 300,
              child: Image.asset(
                'lib/assets/image/Ekran Görüntüsü (64).png',
                width: 420,
                height: 100,
              ),
            ),
            Positioned(
              top: 530,
              left: 160,
              child: SizedBox(
                width: 100,
                height: 38,
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
                    "Giriş",
                    style: TextStyle(fontSize: 14, color: Colors.black),
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
