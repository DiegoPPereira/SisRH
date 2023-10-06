import 'package:flutter/material.dart';
import 'package:sisrh/pages/esquecia_senha.dart';
import './temos.dart';
import './menu_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _lembrarUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff687cf3),
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
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
                      style: const TextStyle(color: Colors.white, fontSize: 15),
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
                      style: const TextStyle(color: Colors.white, fontSize: 15),
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
                const SizedBox(height: 20),
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
                  height: 40.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MenuPrincipal(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff383a63),
                      ),
                    ),
                    child: const Text(
                      "ENTRAR",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                  padding: const EdgeInsets.only(top: 180),
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
                            top: 10), // Ajuste o espaço acima do texto
                        child: Text(
                          "Termo de uso e Política de Privacidade",
                          style: TextStyle(
                              fontSize:
                                  15), // Ajuste o tamanho da fonte conforme necessário
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
    );
  }
}
