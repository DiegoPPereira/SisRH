import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class TermosPage extends StatelessWidget {
  const TermosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff687cf3),
        title: Text(
          'Política de Privacidade e Termos de Uso',
          style: TextStyle(fontSize: 15),
        ),
      ),
      backgroundColor: Color(0xff687cf3),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 15,
          left: 15,
          bottom: 20,
        ),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Center(
              child: Text(
                'A política de privacidade do Sis.RH tem o objetivo de respeitar a privacidade dos usuários ao coletar informações pessoais apenas quando necessário, utilizando-as de forma transparente e com consentimento. As informações coletadas são retidas pelo tempo necessário para fornecer o serviço solicitado e são protegidas contra perdas, roubos e acesso não autorizado. Não compartilhamos informações pessoais publicamente, a menos que exigido por lei. O site pode conter links externos cujo conteúdo e práticas de privacidade não temos controle. Os usuários têm o direito de recusar fornecer informações pessoais, mas isso pode afetar a disponibilidade de certos serviços. O uso contínuo do site implica na aceitação das práticas de privacidade. O Google AdSense é utilizado para veicular anúncios relevantes, utilizando cookies para limitar a exibição excessiva dos mesmos anúncios. Os cookies de publicidade comportamental são utilizados para rastrear interesses dos usuários anonimamente. Parceiros anunciam em nome do Sis.RH, e cookies de rastreamento de afiliados são utilizados para creditar adequadamente as visitas provenientes desses parceiros. Os usuários se comprometem a utilizar o site adequadamente, evitando atividades ilegais, difusão de conteúdo prejudicial e danos aos sistemas físicos e lógicos do Sis.RH e terceiros. A política entra em vigor em 22 de agosto de 2023 às 01:15.',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
