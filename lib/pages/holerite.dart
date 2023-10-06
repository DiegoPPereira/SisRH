import 'package:flutter/material.dart';
import 'package:sisrh/core.dart';

class HoleritePage extends StatelessWidget {
  const HoleritePage({super.key});

  ElevatedButton _createButton(
      String text, Widget destination, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 0),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(height: 150),
            _createButton('HOLERITE', const HoleritePage(), context),
            const SizedBox(height: 10),
            _createButton(
                'INFORMAÇÕES', const InformacaoDerendimento(), context),
            const SizedBox(height: 10),
            _createButton('MEUS DADOS', const MeusDadosPage(), context),
            const SizedBox(height: 10),
            _createButton('SAIR', const LoginPage(), context),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                top: 250,
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TermosPage(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: SizedBox(
                      child: Text(
                        "Termo de uso e Política de Privacidade",
                        style: TextStyle(
                          color: Color(0xff383a63),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff687cf3),
      appBar: AppBar(
        backgroundColor: const Color(0xff687cf3),
        title: const Text('HOLERITE'),
      ),
      body: Container(),
    );
  }
}
