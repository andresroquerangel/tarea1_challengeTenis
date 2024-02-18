import 'package:flutter/material.dart';
import 'package:tarea1_app_tenis/widgets/custom_bottom_bar.dart';

class BeginPage extends StatelessWidget {
  const BeginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Stack(
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        height: 250,
                      ),
                      Positioned(
                        top: -70,
                        right: -20,
                        child: Container(
                          width: 320,
                          height: 320,
                          decoration: const BoxDecoration(
                            color: Color(0xffaa083e),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: -70,
                        left: -10,
                        child: Container(
                          width: 250,
                          height: 250,
                          decoration: const BoxDecoration(
                            color: Color(0xffc30948),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.shopify_sharp,
                        color: Colors.white,
                        size: 200,
                      ),
                      Container(
                        //color: Colors.orange,
                        alignment: AlignmentDirectional.center,
                        child: const Text(
                          'Bienvenido a mi aplicación',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.all(20),
              child: const CustomBottomBar(color: Color(0xfff80b5b)),
            ),
          ],
        ),
      ),
    );
  }
}
