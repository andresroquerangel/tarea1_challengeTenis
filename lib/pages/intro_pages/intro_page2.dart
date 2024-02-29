import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              height: 420,
              child: Lottie.network(
                  'https://lottie.host/21c651c5-98dc-47c3-ad2b-e6a1f5432b89/EPdGwfzbcE.json')),
          Container(
            height: 90,
            alignment: Alignment.center,
            margin: const EdgeInsetsDirectional.all(25),
            child: const Text(
              'Rastrea tu pedido',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.all(20),
            child: const Text(
              'Con nuestro sistema GPS puedes estar seguro de tu pedido, puesto que puedes seguirlo en todo momento.',
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          )
        ],
      )),
    );
  }
}
