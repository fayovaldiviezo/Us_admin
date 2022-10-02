import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:us_admin/pages/historial_page.dart';
import 'package:us_admin/pages/ingresos_page.dart';

import '../pages/home_page.dart';

final pageRoutes = <_Route>[
  _Route(FontAwesomeIcons.house, 'Inicio', const HomePage()),
  _Route(FontAwesomeIcons.moneyBillTransfer, 'Ingresos', const IngresosPage()),
  _Route(FontAwesomeIcons.moneyCheckDollar, 'Historial', const HistorialPage()),
];

class _Route {
  final IconData icon;
  final String titulo;
  final Widget page;

  _Route(this.icon, this.titulo, this.page);
}
