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
            top: 150,
            left: 20,
            right: 20,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(
                      // maxWidth: 500,
                      // // minWidth: 300,
                      ),
                  child: Text(
                    'SENHA ALTERADA',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    constraints: BoxConstraints(
                        // maxWidth: 300,
                        // minWidth: 200,
                        ),
                    child: Text(
                      'Sua senha foi alterada com sucesso e pode ser e já pode ser ultilizada para realizar o login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xff383a63),
                    ),
                  ),
                ),
                SizedBox(
                  height: 380,
                ), // Espaço entre o botão e o texto inferior
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    child: Text("Termo de uso e Política de Privacidade"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
