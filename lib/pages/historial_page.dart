import 'package:flutter/material.dart';
import '../widgets/card_historial.dart';
import '../widgets/menu.dart';

class HistorialPage extends StatelessWidget {
  const HistorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Historial',
        ),
        centerTitle: true,
      ),
      drawer: const MenuPrincipal(),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF003B1D),
                  ),
                  width: 160,
                  child: const Text(
                    '2022',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                miCardHistorial(
                    titulo: 'Enero',
                    icon: Icons.school,
                    mensaje1: 'Total',
                    mensaje2: 'Ver',
                    context: context),
                miCardHistorial(
                    titulo: 'Febreo',
                    icon: Icons.school,
                    mensaje1: 'Total',
                    mensaje2: 'Ver',
                    context: context),
                miCardHistorial(
                    titulo: 'Marzo',
                    icon: Icons.school,
                    mensaje1: 'Total',
                    mensaje2: 'Ver',
                    context: context),
                miCardHistorial(
                    titulo: 'Abril',
                    icon: Icons.school,
                    mensaje1: 'Total',
                    mensaje2: 'Ver',
                    context: context),
                miCardHistorial(
                    titulo: 'Mayo',
                    icon: Icons.school,
                    mensaje1: 'Total',
                    mensaje2: 'Ver',
                    context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
