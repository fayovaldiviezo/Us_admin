import 'package:flutter/material.dart';
//import 'package:universidad_sancris/src/widgets/card_materias.dart';

import '../widgets/card_materias.dart';
import '../widgets/menu.dart';

class IngresosPage extends StatelessWidget {
  const IngresosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ingresos',
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
                            'Mensuales',
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
                            '1200',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text('Cuatrimestrales',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ],
                ),
                miCardMat(
                    titulo: 'Plantel - San Cristóbal de las Casas',
                    descripcion: 'Cantidad de dinero generada',
                    icon: Icons.school,
                    mensaje1: 'Mensual'),
                miCardMat(
                  titulo: 'Plantel - Comitán',
                  descripcion: 'Cantidad de dinero generada',
                  icon: Icons.school,
                  mensaje1: 'Mensual',
                ),
                miCardMat(
                  titulo: 'Plantel - Acala',
                  descripcion: 'Cantidad de dinero generada',
                  icon: Icons.school,
                  mensaje1: 'Mensual',
                ),
                miCardMat(
                  titulo: 'Plantel - Tapachulala',
                  descripcion: 'Cantidad de dinero generada',
                  icon: Icons.school,
                  mensaje1: 'Mensual',
                ),
                miCardMat(
                  titulo: 'Plantel - Chicomuselo',
                  descripcion: 'Cantidad de dinero generada',
                  icon: Icons.school,
                  mensaje1: 'Mensual',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
