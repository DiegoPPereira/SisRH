import 'package:flutter/material.dart';
import 'package:sisrh/pages/login.page.dart';
import 'package:sisrh/pages/menu.page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sis.RH',
      home: LoginPage(),
    );
  }
}
