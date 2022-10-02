import 'package:flutter/material.dart';
import '../widgets/campos_custom.dart';
import 'login_page.dart';

class RecuperarpassPage extends StatelessWidget {
  const RecuperarpassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 40, right: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height: 130,
              ),
              const SizedBox(height: 20),
              const Text(
                'Ingresa tu correo electrónico con el que te diste de alta, por ese medio te enviaremos tus datos de acceso',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFF003B1D)),
              ),
              const SizedBox(height: 20),
              const CustomInputField(
                hintText: 'Usuario:',
                labelText: 'Usuario',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 10,
                    primary: const Color(0xFF003B1D)),
                child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Recuperar',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              InkWell(
                child: const Text(
                  'Ir a Inicio de Seción',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF003B1D),
                      fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
