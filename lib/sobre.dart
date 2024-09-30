import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Sobre"
       , style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 126, 28, 24),
      
     ),
     body: Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text("A ETEC Pedro Badran é uma instituição que homenageia Pedro Badran, um imigrante libanês que chegou ao Brasil em 1884. Após se estabelecer em Nuporanga e, posteriormente, em São Joaquim da Barra, ele se dedicou ao comércio e à acolhida de outros imigrantes. Badran percebeu a falta de escolas profissionalizantes e, em 1921, se empenhou em promover a educação. Em 1958, o prefeito de São Joaquim da Barra, Dr. José Ribeiro Fortes, solicitou a colaboração dos filhos de Pedro Badran para a construção de uma escola. A Lei nº 322, aprovada em março de 1958, autorizou a criação da Escola Artesanal, que começou a funcionar em junho de 1959, com 175 alunos. A escola foi oficialmente nomeada em homenagem a Badran pela Lei nº 325, em reconhecimento aos seus esforços ")
        ],
         ),
     ),
    

    );
  }
}