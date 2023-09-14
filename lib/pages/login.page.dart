import 'package:flutter/material.dart';
import 'package:sisrh/pages/esquecia_senha.dart';
import './temos.dart';
import './menu.page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _lembrarUsuario = false;

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
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                        decoration: const InputDecoration(
                          labelText: 'LOGIN',
                          prefixIcon: IconTheme(
                            data: IconThemeData(color: Colors.white),
                            child: Icon(Icons.account_box_outlined),
                          ),
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 1),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                        decoration: InputDecoration(
                          labelText: 'SENHA',
                          hintStyle: const TextStyle(color: Colors.white),
                          prefixIcon: GestureDetector(
                            child: const IconTheme(
                              data: IconThemeData(color: Colors.white),
                              child: Icon(Icons.lock_outline),
                            ),
                          ),
                          labelStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Lembrar Usuário",
                        style: TextStyle(color: Colors.white),
                      ),
                      Checkbox(
                        value: _lembrarUsuario,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _lembrarUsuario = newValue ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
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
                  const SizedBox(height: 10),
                  Container(
                    height: 20,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EsqueciSenhaPage(),
                          ),
                        );
                      },
                      child: const Text("Esqueci a Senha"),
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
                              builder: (context) => const TermosPage(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 70,
                          ),
                          child: SizedBox(
                            child:
                                Text("Termo de uso e Politica de Privacidade"),
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
      ),
    );
  }
}
