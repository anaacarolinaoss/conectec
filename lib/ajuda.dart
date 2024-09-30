import 'package:flutter/material.dart';

class Ajuda extends StatefulWidget {
  const Ajuda({super.key});

  @override
  State<Ajuda> createState() => _AjudaState();
}

class _AjudaState extends State<Ajuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Ajuda"
       , style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 126, 28, 24),
     ),
     body: Container(
      padding: EdgeInsets.all(32),
      child: Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Em caso de dúvidas entre em contato :',
          style: TextStyle( 
            fontSize: 24,
          ),
        ),
        SizedBox(height: 20,),
        Text(
          'E-mail:',
          style: TextStyle(fontSize: 18,),
        ),
        Text('e094.dir@etec.sp.com.br'),
        SizedBox( height: 20,),
        Text(
          'Telefone: ',
          style: TextStyle (fontSize: 18),
        ),
        Text ('016 3818-2192',
        style: TextStyle(fontSize: 16, color: Colors.blue),)
      ],

      ),
     ),
    );
  }
}