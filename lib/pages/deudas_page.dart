import 'package:flutter/material.dart';

import '../widgets/menu.dart';
//import 'package:universidad_sancris/src/widgets/menu.dart';

class DeudasPage extends StatelessWidget {
  const DeudasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Deudas'),
          centerTitle: true,
        ),
        drawer: const MenuPrincipal(),
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.all(20.0),
                      padding: const EdgeInsets.all(8),
                      width: double.infinity,
                      height: 150,
                      child: Text('Hola')),
                ],
              ),
            ),
          ],
        ));
  }
}
