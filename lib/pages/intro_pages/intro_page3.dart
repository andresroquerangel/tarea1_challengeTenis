import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
              height: 420,
              alignment: Alignment.center,
              child: Container(
                height: 300,
                child: Lottie.network(
                    'https://lottie.host/86a9c102-d0b0-4db0-a14f-0fab2221a1ac/PXNpkhQDQW.json'),
              )),
          Container(
            height: 90,
            alignment: Alignment.center,
            margin: const EdgeInsetsDirectional.all(15),
            child: const Text(
              'Soporte',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.all(15),
            child: const Text(
              '¿Tienes una duda? No dudes en comunicarte con nosotros. Contamos con servicio al cliente 24/7.',
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          )
        ],
      )),
    );
  }
}
