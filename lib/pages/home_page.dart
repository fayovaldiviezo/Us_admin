import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:universidad_sancris/src/widgets/card_materias.dart';

import '../widgets/card_materias.dart';
import '../widgets/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Universidad San Cristóbal',
        ),
        centerTitle: true,
      ),
      drawer: const MenuPrincipal(),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF003B1D),
                      ),
                      width: 160,
                      child: Column(
                        children: const [
                          Text(
                            '1200',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Alumnos',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF003B1D),
                      ),
                      width: 160,
                      child: Column(
                        children: const [
                          Text(
                            '5',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text('Planteles',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF003B1D),
                      ),
                      width: 110,
                      child: Column(
                        children: const [
                          Text(
                            '8',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Licenciaturas',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF003B1D),
                      ),
                      width: 110,
                      child: Column(
                        children: const [
                          Text(
                            '8',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text('Maestrías',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF003B1D),
                      ),
                      width: 110,
                      child: Column(
                        children: const [
                          Text(
                            '2',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Doctorados',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                miCardMat(
                  titulo: 'Plantel - San Cristóbal de las Casas',
                  descripcion:
                      'Av. La juventud #132B, Barrió de María Auxiliadora',
                  icon: Icons.school,
                  mensaje1: '400 Alumnos',
                ),
                miCardMat(
                  titulo: 'Plantel - Comitán',
                  descripcion: 'Av. Poniente Norte #6 Col. Centro',
                  icon: Icons.school,
                  mensaje1: '200 Alumnos',
                ),
                miCardMat(
                  titulo: 'Plantel - Acala',
                  descripcion: 'Rivera Porvenir sin número',
                  icon: Icons.school,
                  mensaje1: '200 Alumnos',
                ),
                miCardMat(
                  titulo: 'Plantel - Tapachulala',
                  descripcion: '5 Norte y 1 Oriente, Esquina a la prepa uno',
                  icon: Icons.school,
                  mensaje1: '200 Alumnos',
                ),
                miCardMat(
                  titulo: 'Plantel - Chicomuselo',
                  descripcion:
                      'Calle 6 Avenida Sur Poniente Km 1.5, Barrio el Edén',
                  icon: Icons.school,
                  mensaje1: '200 Alumnos',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
