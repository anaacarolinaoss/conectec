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
      child: Column(
        children: [
          Text("")
        ],
         ),
     ),
    );
  }
}