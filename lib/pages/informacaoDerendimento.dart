import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class informacaoDerendimento extends StatelessWidget {
  const informacaoDerendimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff687cf3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff687cf3),
              ),
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Página Inicial'),
              onTap: () {
                // Adicione ação para navegar para a página inicial aqui
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil'),
              onTap: () {
                // Adicione ação para navegar para o perfil aqui
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            // Adicione mais itens do menu aqui
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Diego Porcino Pereira',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Desenvolvedor Flutter Pleno',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            // Outros elementos aqui
          ],
        ),
      ),
    );
  }
}
