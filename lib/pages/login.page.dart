import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sisrh/pages/esquecia_senha.dart';
import './temos.dart';
import './menu.page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _Senha = false;
  bool _Cadeado = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff687cf3),
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: SizedBox(
                        width: 300,
                        height: 300,
                        child: Image.asset('assets/images/LogoSisRH.png'),
                      ),
                    ),
                    Column(
                      children: [
                        TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          decoration: InputDecoration(
                            labelText: 'LOGIN',
                            prefixIcon: IconTheme(
                              data: IconThemeData(color: Colors.white),
                              child: Icon(Icons.account_box_outlined),
                            ),
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                        Divider(),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          obscureText: true,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          decoration: InputDecoration(
                            labelText: 'SENHA',
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: GestureDetector(
                              child: IconTheme(
                                data: IconThemeData(color: Colors.white),
                                child: Icon(Icons.lock_outline),
                              ),
                            ),
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 5,
                    ),
                    Container(
                      height: 20,
                      margin: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      alignment: Alignment.centerRight,
                      child: Text("Lembrar Usuário",
                          style: TextStyle(color: Colors.white)),
                    ),
                    Divider(
                      height: 5,
                    ),
                    ButtonTheme(
                      height: 20.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuPrincipal(),
                            ),
                          ),
                        },
                        child: Text(
                          "ENTRAR",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff383a63),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Container(
                      height: 20,
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EsqueciSenhaPage(),
                            ),
                          );
                        },
                        child: Text("Esqueci a Senha"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TermosPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 60,
                            ),
                            child: SizedBox(
                              child: Text(
                                  "Termo de uso e Politica de Privacidade"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
