import 'package:flutter/material.dart';
import 'package:us_admin/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Universidad San Cristóbal',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF003B1D)),
        ),
        home: const LoginPage());
  }
}
