import 'package:flutter/material.dart';

class Avisos extends StatefulWidget {
  const Avisos({super.key});

  @override
  State<Avisos> createState() => _AvisosState();
}

class _AvisosState extends State<Avisos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Avisos"
       , style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 126, 28, 24),
      
     ),
     body: Container(
      padding: EdgeInsets.all(32),
      child:Column(
         mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              
              Icon(Icons.warning, color: Colors.yellow),
                  SizedBox(width: 8),
                  Text('Em virtude da situação emergencial das queimadas na região, dia 26/08 as aulas serão de forma remota. Para os alunos que não puderem assistir as aulas, deverão entregar atividades para computação de frequência. ', style: TextStyle(fontSize: 18)),
                ],
              ),
               SizedBox(height: 16), // Espaço entre as linhas
              Row(
                children: [
                  Icon(Icons.warning, color: Colors.yellow),
                  SizedBox(width: 8),
                  Text('Dia 10/10, quinta-feira, aulão com a professora Josi no salão nobre às 08:30.', style: TextStyle(fontSize: 18)),
                ],
              ),
               SizedBox(height: 16), // Espaço entre as linhas
              Row(
                children: [
                  Icon(Icons.warning, color: Colors.yellow),
                  SizedBox(width: 8),
                  Text('Devido á problemas na rede de água da unidade, amanhã 11/10, sexta-feira, as aulas serão remotas pelo teams e o trote será adiado, sem data prevista !', style: TextStyle(fontSize: 18)),
                ],
              ),

            ],
          )
        
         ),
     );
     
    
  }
}