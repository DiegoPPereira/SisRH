import 'package:flutter/material.dart';
import 'package:sisrh/pages/holerite.dart';
import 'package:sisrh/pages/informacaoDerendimento.dart';
import './login.page.dart';
import './meusdadospage.dart';
import './informacaoDerendimento.dart';
import './holerite.dart';
import './temos.dart';

class MenuPrincipal extends StatefulWidget {
  MenuPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  PageController _pageController = PageController();

  ElevatedButton createButton(
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
        primary: Colors.white, // Cor de fundo branca
        onPrimary: Colors.black, // Cor do texto preto
        elevation: 2, // Adiciona uma leve sombra
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Define o raio do botão
        ),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16), // Ajuste o tamanho da fonte
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff687cf3),
      appBar: AppBar(
        backgroundColor: const Color(0xff687cf3),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 50,
          ),
          child: Text('MENU PRINCIPAL'),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 150),
            createButton('HOLERITE', const HoleritePage(), context),
            SizedBox(height: 10), // Reduzi o espaço entre os botões para 10
            createButton('INFORMAÇÕES DE RENDIMENTO',
                const InformacaoDerendimento(), context),
            SizedBox(height: 10), // Reduzi o espaço entre os botões para 10
            createButton('MEUS DADOS', const MeusDadosPage(), context),
            SizedBox(height: 10), // Reduzi o espaço entre os botões para 10
            createButton('SAIR', const LoginPage(), context),
            SizedBox(height: 10), // Reduzi o espaço entre os botões para 10
            Padding(
              padding: const EdgeInsets.only(
                top: 150,
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20, // Reduzi o espaço acima do texto
                    ),
                    child: SizedBox(
                      child: Text(
                        "Termo de uso e Política de Privacidade",
                        style: TextStyle(
                          color: Color(0xff383a63),
                          fontSize: 14, // Ajuste o tamanho da fonte
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
                    child: Image.asset('assets/images/LogoSisRH.png'),
                  ),
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
