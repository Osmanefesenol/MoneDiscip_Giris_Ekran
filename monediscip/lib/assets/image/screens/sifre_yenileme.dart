import 'package:flutter/material.dart';

class SifreYenileme extends StatelessWidget {
  const SifreYenileme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 96, 98, 100),
                  Color.fromARGB(255, 148, 156, 148)
                ], // İstediğiniz gradyan renkleri burada belirtin
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Stack(
              children: [
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
                        hintText: "Eski Şifreniz",
                        fillColor: const Color.fromARGB(255, 221, 213, 213),
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
                  top: 450,
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
                        hintText: "Yeni Şifreniz",
                        fillColor: const Color.fromARGB(255, 221, 213, 213),
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
                  top: 520,
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
                        hintText: "Yeni Şifreyi Tekrar Giriniz",
                        fillColor: const Color.fromARGB(255, 221, 213, 213),
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
                  top: 630,
                  left: 160,
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          side: const BorderSide(color: Colors.blue),
                          backgroundColor: const Color.fromARGB(255, 228, 225, 225)),
                      child: const Text(
                        "Kaydet",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
