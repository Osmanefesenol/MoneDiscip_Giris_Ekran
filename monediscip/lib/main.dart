import 'package:flutter/material.dart';
import 'assets/image/screens/home.dart';


void main(List<String> args) {
  runApp(const monediscip());
}


// ignore: camel_case_types
class monediscip extends StatelessWidget {
  const monediscip({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
     home: homescreen());
  }
}


