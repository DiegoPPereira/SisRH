import 'package:flutter/material.dart';
import './temos.dart';
import './senha_alterada.dart';

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
                constraints: BoxConstraints(
                  maxWidth: 500,
                  minWidth: 300,
                ),
                child: Text(
                  'ESQUECI MINHA SENHA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 300,
                    minWidth: 200,
                  ),
                  child: Text(
                    'Enviamos um link de redefinição de senha para o seu email',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      prefixIcon: IconTheme(
                        data: IconThemeData(color: Colors.white),
                        child: Icon(Icons.account_box_outlined),
                      ),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SenhaAlterada(),
                        ),
                      );
                    },
                    child: Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xff383a63),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 300), // Espaço entre o botão e o texto inferior
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  child: Text("Termo de uso e Politica de Privacidade"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
