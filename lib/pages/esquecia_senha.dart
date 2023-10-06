import 'package:flutter/material.dart';
import 'package:sisrh/pages/redefinir_senha.dart';
import 'package:sisrh/core.dart';

class EsqueciSenhaPage extends StatelessWidget {
  const EsqueciSenhaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff687cf3),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 150,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 500,
                  minWidth: 300,
                ),
                child: const Text(
                  'ESQUECI MINHA SENHA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                    minWidth: 200,
                  ),
                  child: const Text(
                    'Enviamos um link de redefinição de senha para o seu email',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      prefixIcon: IconTheme(
                        data: IconThemeData(color: Colors.white),
                        child: Icon(Icons.account_box_outlined),
                      ),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RedefinirSenha(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff383a63),
                      ),
                    ),
                    child: const Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                  height: 350), // Espaço entre o botão e o texto inferior
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
    );
  }
}
