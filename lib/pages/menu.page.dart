import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sisrh/pages/holerite.dart';
import 'package:sisrh/pages/informacaoDerendimento.dart';
import './login.page.dart';
import './meusdadospage.dart';
import './informacaoDerendimento.dart';
import './holerite.dart';

class MenuPrincipal extends StatefulWidget {
  MenuPrincipal({
    super.key,
  });

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  PageController _PageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff687cf3),
      appBar: AppBar(
        backgroundColor: Color(0xff687cf3),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 50,
          ),
          child: Text('MENU PRINCIPAL'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('HOLERITE'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HoleritePage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('INFORMAÇÕES DE RENDIMENTO'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => informacaoDerendimento(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('MEUS DADOS'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MeusDadosPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('SAIR'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                      width: 250,
                      child: Image.asset('assets/images/LogoSisRH.png')),
                  Container(
                    child: Center(
                      child: Text(
                        'EM CONSTRUÇÃO',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
