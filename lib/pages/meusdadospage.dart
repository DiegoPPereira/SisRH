import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MeusDadosPage extends StatelessWidget {
  const MeusDadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff687cf3),
      appBar: AppBar(
        backgroundColor: Color(0xff687cf3),
        title: Text('MEUS DADOS'),
      ),
      body: Container(),
    );
  }
}
