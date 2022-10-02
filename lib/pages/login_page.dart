import 'package:flutter/material.dart';
import 'package:us_admin/pages/recuperarpass_page.dart';

import '../widgets/campos_custom.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              const CustomInputField(
                hintText: 'Usuario:',
                labelText: 'Usuario',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              const CustomInputField(
                hintText: 'Contraseña:',
                labelText: 'Contraseña',
                obscureText: true,
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
                        'Iniciar Sesión',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              const SizedBox(height: 20),
              InkWell(
                child: const Text(
                  '¿Olvidó su contraseña?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF003B1D),
                      fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RecuperarpassPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
