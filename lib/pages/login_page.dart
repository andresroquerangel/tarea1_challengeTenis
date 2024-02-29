import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tarea1_app_tenis/pages/onboarding_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _keyForm = GlobalKey<FormState>();
  final conUsername = TextEditingController();
  final conPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final txtUsername = TextFormField(
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Necesitas ingresar tu nombre';
        }
        if (value != 'admin') {
          return 'No existe este usuario';
        }
        return null;
      },
      controller: conUsername,
      decoration: const InputDecoration(
        labelText: 'Nombre de usuario',
        prefixIcon: Icon(Icons.person),
        border: UnderlineInputBorder(),
      ),
    );

    final txtPassword = TextFormField(
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Necesitas ingresar tu contraseña';
        }
        if (value.length < 4) {
          return 'Tu contraseña debe tener mínimo 5 caracteres';
        }
        if (value != '12345') {
          return 'Contraseña incorrecta';
        }
        return null;
      },
      controller: conPassword,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Contraseña',
        prefixIcon: Icon(Icons.password),
        border: UnderlineInputBorder(),
      ),
    );

    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              //margin: const EdgeInsetsDirectional.symmetric(vertical: 20),
              child: LottieBuilder.network(
                  'https://lottie.host/f736575e-8dd1-4f63-bc24-1a2671f3a20d/Ek9oqCxsg0.json'),
            ),
          ),
          Positioned(
            top: 380,
            child: Container(
                margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alineación a la izquierda
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Iniciar sesión',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: const Text(
                        'Ingresa tu información para continuar.',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                )),
          ),
          Positioned(
            top: 480,
            right: 20,
            left: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65,
              child: Form(
                key: _keyForm,
                child: ListView(
                  children: [
                    txtUsername,
                    const SizedBox(
                      height: 20,
                    ),
                    txtPassword,
                    const SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () {
                        if (_keyForm.currentState!.validate()) {
                          conPassword.clear();
                          conUsername.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const OnBoardingScreen();
                            }),
                          );
                        }
                      },
                      child: const Text('Iniciar sesión'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all(const Size(0, 70))),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
