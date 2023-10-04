import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MeusDadosPage extends StatelessWidget {
  const MeusDadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff687cf3),
      appBar: AppBar(
        backgroundColor: const Color(0xff687cf3),
        title: const Text('MEUS DADOS'),
      ),
      body: Container(),
    );
  }
}
