import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:us_admin/pages/ingresos_page.dart';

Card miCardHistorial(
    {required String titulo,
    required IconData icon,
    required String mensaje1,
    required String mensaje2,
    required BuildContext context}) {
  return Card(
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),

    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: const EdgeInsets.all(15),

    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 15,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[
        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        ListTile(
          contentPadding: const EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(titulo),
          leading: const FaIcon(
            FontAwesomeIcons.moneyBillTrendUp,
            color: Color(0xFF003B1D),
          ),
        ),

        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
                onPressed: () => {},
                child: Text(
                  mensaje1,
                  style: const TextStyle(color: Colors.black),
                )),
            TextButton(
                onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const IngresosPage()))
                    },
                child: Text(
                  mensaje2,
                  style: const TextStyle(color: Colors.black),
                )),
          ],
        )
      ],
    ),
  );
}
