import 'package:flutter/material.dart';
import 'package:tarea1_app_tenis/widgets/custom_app_bar.dart';
import 'package:tarea1_app_tenis/widgets/custom_bottom_bar.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: Container(
                margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                child: Stack(children: [
                  Positioned(
                      top: 100,
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 50),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Icon(
                                      Icons.person,
                                      size: 35,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nombre',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        'Andres Roque Rangel',
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Icon(
                                      Icons.assignment_ind_outlined,
                                      size: 35,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Número de control',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        '20030928',
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Icon(
                                      Icons.menu_book_rounded,
                                      size: 35,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Carrera',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        'Ingeniería en Sistemas Computacionales',
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Icon(
                                      Icons.space_dashboard_outlined,
                                      size: 35,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Módulo de especialidad',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        'Industria 4.0',
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 50),
                              child: TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blue),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      minimumSize: MaterialStateProperty.all(
                                          const Size(200, 50))),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Cerrar sesión')),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                    left: 100,
                    right: 100,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: const CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/150?img=59'),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.all(20),
              child: const CustomBottomBar(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
