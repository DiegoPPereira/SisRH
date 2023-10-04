import 'package:flutter/material.dart';
import 'package:sisrh/pages/login.page.dart';
import './temos.dart';

class SenhaAlterada extends StatelessWidget {
  const SenhaAlterada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff687cf3),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 100,
              left: 20,
              right: 20,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.check, // Ícone de visto (checkmark)
                    color: Colors.white,
                    size: 200, // Tamanho do ícone
                  ),
                  Container(
                    constraints: const BoxConstraints(
                      maxWidth: 500,
                      minWidth: 300,
                    ),
                    child: const Text(
                      'SENHA ALTERADA',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                        minWidth: 201,
                      ),
                      child: const Text(
                        'Sua senha foi alterada com sucesso e pode ser e já pode ser ultilizada para realizar o login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff383a63),
                      ),
                    ),
                    child: const Text(
                      "OK",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                      height: 220), // Espaço entre o botão e o texto inferior
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TermosPage(),
                          ),
                        );
                      },
                      child: const SizedBox(
                        child: Text("Termo de uso e Política de Privacidade"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
