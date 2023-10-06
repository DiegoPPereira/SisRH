import 'package:flutter/material.dart';
import 'package:sisrh/core.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
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
        foregroundColor: Colors.black,
        backgroundColor: Colors.white, // Cor do texto preto
        elevation: 2, // Adiciona uma leve sombra
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Define o raio do botão
        ),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 0),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14), // Ajuste o tamanho da fonte
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff687cf3),
      appBar: AppBar(
        backgroundColor: const Color(0xff687cf3),
        title: const Padding(
          padding: EdgeInsets.only(
            left: 100,
          ),
          child: Text('PERFIL'),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(height: 150),
            createButton('HOLERITE', const HoleritePage(), context),
            const SizedBox(
                height: 10), // Reduzi o espaço entre os botões para 10
            createButton(
              'INFORMAÇÕES',
              const InformacaoDerendimento(),
              context,
            ),

            const SizedBox(
                height: 10), // Reduzi o espaço entre os botões para 10
            createButton('MEUS DADOS', const MeusDadosPage(), context),
            const SizedBox(
                height: 10), // Reduzi o espaço entre os botões para 10
            createButton(
              'SAIR',
              const LoginPage(),
              context,
            ),
            const SizedBox(
                height: 10), // Reduzi o espaço entre os botões para 10
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
                      top: 10, // Reduzi o espaço acima do texto
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
      body: const Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/diego2.jpg'),
                  radius: 80.0,
                ),
              ),
            ),
            SizedBox(
              width: 400, // Defina a largura desejada
              height: 400, // Defina a altura desejada
              child: Card(
                color: Colors.white,
                elevation: 2,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Informações Pessoais",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff383a63),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Nome:                     Diego P. Pereia",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff383a63)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Cargo:                     Develop Flutter",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff383a63)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Chacha:                                 37911",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff383a63)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "RG:                             28.046.338-8",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff383a63)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "CPF:                       297.696.370-33",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff383a63)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "PIS:                        154.72388.23-0",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff383a63)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Data de Nascimento: 11/02/1990",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff383a63)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Email:      diego123@outlook.com",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff383a63)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Telefone:               (64) 3971-7052",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff383a63)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
