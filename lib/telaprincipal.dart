import 'package:conectec/adm.dart';
import 'package:conectec/aluno.dart';

import 'package:flutter/material.dart';

import 'login/login.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Image.asset("imagens/conectec2.png",
        height: 100,
        width: 100,),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 Color.fromARGB(255, 26, 22, 22),
               Color.fromARGB(255,117,13,13),
           
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight, 
            ),
          ),
        ),
      ),
      body:   Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 26, 22, 22),
               Color.fromARGB(255,117,13,13),
            ],
            ),
        ),
    
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                const SizedBox(height: 30,),
               const Text(
                  "SEJA BEM VINDO!",
                  style:
                   TextStyle(
                    fontSize: 30,
                   color: Color.fromARGB(255, 255, 254, 254),

              
                  ),
                ),
                SizedBox(height: 20,
                ),
                  
                  
                
                SizedBox(height: 15,),
                ElevatedButton(
                  style:  ElevatedButton.styleFrom (
                    minimumSize: Size(300, 60),
                    textStyle: TextStyle(fontSize: 25),
                      primary: Colors.transparent,
                      onPrimary: 
                      Colors.white,
                  
                  
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => User(email: '',)),
                    );
                  },
                  child: const Text(
                    'Cadastrar',
                    style: 
                    TextStyle(fontSize: 20,
                      fontWeight: FontWeight.normal,

                  
                color: Color.fromARGB(255, 255, 255, 255),),
                  ),
                ),
                SizedBox(height: 20,),
              
    Text('Já tem uma conta?',
    style: TextStyle(fontSize: 20,
                   color: Color.fromARGB(255, 255, 254, 254),

                  
                  ),),
    
    TextButton(
      onPressed: () {
        
        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login(
                                email: '',
                              )),
        );
      },
      child: Text('Entre aqui'),
      style: TextButton.styleFrom(
        primary: Color.fromARGB(255, 255, 255, 255), 
        textStyle: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 18
        ),
      ),
    ),
              ],
      
      
          
        ),
          ),
        
            ),
    );
  
          
        
  }
}
