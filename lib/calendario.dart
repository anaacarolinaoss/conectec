// ignore_for_file: dead_code

import 'package:flutter/material.dart';


class Calendario extends StatefulWidget {
  const Calendario({super.key});

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Calendário"
       , style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 126, 28, 24),
      
  
    
     ),
      );
      Widget content(){
        return Column(
          children: [
            Text("123"),
            Container(
            child: CalendarDatePicker(
              initialDate: today, firstDate: DateTime.utc(2024,25,26), 
              lastDate: DateTime.utc(2030,3,14), onDateChanged: (DateTime value) {  },),
            ),
          ],
        );
      }

  }
}
