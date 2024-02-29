import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
              height: 420,
              alignment: Alignment.center,
              child: Lottie.network(
                  'https://lottie.host/747ac40a-2340-4fc6-a873-5446888c5bc7/IFhZXn3Bni.json')),
          Container(
            height: 90,
            alignment: Alignment.center,
            margin: const EdgeInsetsDirectional.all(25),
            child: const Text(
              'Descubre una gran variedad de productos',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.all(20),
            child: const Text(
              'En nuestra tienda puedes encontrar una gran cantidad de productos de diferentes categorias.',
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          )
        ],
      )),
    );
  }
}
