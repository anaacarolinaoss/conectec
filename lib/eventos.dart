import 'package:flutter/material.dart';

class Eventos extends StatefulWidget {
  const Eventos({super.key});

  @override
  State<Eventos> createState() => _EventosState();
}

class _EventosState extends State<Eventos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Eventos"
       , style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 126, 28, 24),
      
     ),
     body: Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text("CONFIRA ALGUNS DE NOSSOS EVENTOS !"),
        ],
         ),
     ),
    );
  }
}