import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tarea1_app_tenis/pages/begin_page.dart';
import 'package:tarea1_app_tenis/pages/intro_pages/intro_page1.dart';
import 'package:tarea1_app_tenis/pages/intro_pages/intro_page2.dart';
import 'package:tarea1_app_tenis/pages/intro_pages/intro_page3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.6),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          ),
          Container(
            alignment: const Alignment(0, 0.90),
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text('Saltar'),
                  ),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const BeginPage();
                              }),
                            );
                          },
                          child: const Text('Listo'),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: const Text('Siguiente'),
                        )
                ]),
          )
        ],
      ),
    );
  }
}
