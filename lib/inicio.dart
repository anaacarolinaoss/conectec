import 'package:conectec/avisos.dart';
import 'package:conectec/calendario.dart';
import 'package:conectec/configuracao.dart';
import 'package:conectec/eventos.dart';
import 'package:conectec/perfil.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
       title: Text ('CONECTEC',
       style: TextStyle(color: Colors.white),),
       backgroundColor: Color.fromARGB(255, 100, 21, 18),
       actions: [
          
         
               IconButton(
      icon: Icon(Icons.settings,
      color: Colors.white,), // Add a settings icon
      onPressed: () {

       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Configuracao()),
                          );
        
     
      },
             ),       ],
      
      ),
            
        
      body: Padding(
        padding: const EdgeInsets.only(top: 03),
        child: Column(
          
          children: [
            // Quatro botões na linha de baixo
        
            Container(
              color: Color.fromARGB(255, 100, 21, 18),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: ElevatedButton(
                      
                      child: Text('Notícias'),
                      onPressed: () {},
                         
                          
                       style: ElevatedButton.styleFrom(
                        primary:Color.fromARGB(255, 100, 21, 18),
                         onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                        
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                     
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: ElevatedButton(
                      child: Text('Eventos'),
                      onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Eventos()),
                          );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 100, 21, 18),
                         onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: ElevatedButton(
                      child: Text('Calendário'),
                      onPressed: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Calendario()),
                          );
                      },
                       style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 100, 21, 18),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: ElevatedButton(
                      child: Text('Avisos'),
                      onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Avisos()),
                          );  
                      },
                       style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 100, 21, 18),
                         onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                       
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Conteúdo da página
            Center(
              child: Text('Conteúdo da página'),
            ),
          ],
        ),
      ),
    );
  }
}