import 'package:flutter/material.dart';

class Calendario extends StatefulWidget {
  const Calendario({super.key});

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Calendário"
       , style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 126, 28, 24),
      
     ),
     body: Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text("")
        ],
         ),
     ),
    );
  }
}