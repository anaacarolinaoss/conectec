import 'package:conectec/ajuda.dart';
import 'package:conectec/privacidade.dart';
import 'package:conectec/sobre.dart';
import 'package:flutter/material.dart';

class Configuracao extends StatefulWidget {
  const Configuracao({super.key});

  @override
  State<Configuracao> createState() => _ConfiguracaoState();
}

class _ConfiguracaoState extends State<Configuracao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Configuração"
      , style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 126, 28, 24),
      
     ),
     body: Container(
      child: Column(
        children: [
          TextButton(
      onPressed: () {
        
        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Privacidade(
                              )),
        );
      },
      child: Text('Política de Privacidade'),
      style: TextButton.styleFrom(
        primary: Color.fromARGB(255, 0, 0, 0), 
        textStyle: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 18
        ),
      ),
    ),
     SizedBox(height: 01,), 

     TextButton(
      onPressed: () {
        
        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sobre(
                              )),
        );
      },
      child: Text('Sobre'),
      style: TextButton.styleFrom(
        primary: Color.fromARGB(255, 0, 0, 0), 
        textStyle: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 18
        ),
      ),
    ),
    SizedBox(height: 01,), 

    Align(
      alignment: Alignment.topRight
    ),

    TextButton(
      onPressed: () {
        
        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Ajuda(
                              )),
        );
      },
      child: Text('Ajuda'),
      style: TextButton.styleFrom(
        primary: Color.fromARGB(255, 0, 0, 0), 
        textStyle: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 18
        ),
      ),
    ),

              ],
              
            
      
      
        
         ),
     ),
    );
  }
}