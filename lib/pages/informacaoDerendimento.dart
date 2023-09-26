import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(InformacaoDerendimento());
}

class InformacaoDerendimento extends StatelessWidget {
  final List<double> salarios = [
    3000,
    3500,
    3200
  ]; // Substitua com os seus valores
  final double desconto = 500.0; // Substitua com o valor do desconto

  // Adicione os nomes dos meses correspondentes aos seus dados
  final List<String> meses = ["Janeiro", "Fevereiro", "Março"];

  // Adicione o nome completo e o cargo de atuação
  final String nomeCompleto = "DIEGO PORCINO PEREIRA";
  final String cargo = "Desenvolvedor Flutter";

  @override
  Widget build(BuildContext context) {
    double valorLiquido = salarios.reduce((a, b) => a + b) - desconto;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff687cf3),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 0),
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/LogoSisRH.png'),
                ),
              ),
              const SizedBox(height: 0),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/foto_perfil.jpg'),
              ),
              const SizedBox(height: 20),
              Text(
                nomeCompleto,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                cargo,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildInfoCard("Valor Bruto",
                      salarios.reduce((a, b) => a + b), Colors.blue),
                  _buildInfoCard("Descontos", desconto, Colors.red),
                  _buildInfoCard("Valor Líquido", valorLiquido, Colors.green),
                ],
              ),
              Expanded(
                child: Center(
                  child: PieChart(
                    PieChartData(
                      sectionsSpace: 0,
                      centerSpaceRadius: 0,
                      sections: List.generate(
                        3,
                        (index) {
                          return PieChartSectionData(
                            color: _getColor(index),
                            value: salarios[index],
                            title:
                                meses[index], // Use o nome do mês como título
                            radius: 0,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getColor(int index) {
    switch (index) {
      case 0:
        return Colors.blue;
      case 1:
        return Colors.red;
      case 2:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  Widget _buildInfoCard(String title, double value, Color color) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 25,
          child: const Icon(Icons.attach_money, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 16, color: color),
        ),
        Text(
          value.toStringAsFixed(2),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}
