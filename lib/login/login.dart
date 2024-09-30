import 'package:conectec/inicio.dart';
import 'package:flutter/material.dart';

import 'senha.dart';

class Login extends StatelessWidget {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  Login({super.key, required String email});

  void _signup() {
    final email = _emailController.text;
    final senha = _senhaController.text;

  }
  
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
    appBar: AppBar(
        title: Text ("Log In"),
        titleTextStyle: TextStyle(fontSize: 24, color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 Color.fromARGB(255, 26, 22, 22),
               Color.fromARGB(255,117,13,13),
                // cor final do gradiente
              ],
              begin: Alignment.topLeft, // ponto inicial do gradiente
              end: Alignment.bottomRight, // ponto final do gradiente
            ),
          ),
        ),
      ),
         body: 
         Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Acesse sua conta",
            style: TextStyle (fontSize: 40,
            color:Color.fromARGB(255, 255, 254, 254),

                  
                  ),
            ) ,
            
            TextField(
              controller: _emailController,
              style: TextStyle(color:Colors.white),
              decoration: const InputDecoration(labelText: 'Email',
               labelStyle: TextStyle(fontSize: 20,
                   color: Color.fromARGB(255, 255, 254, 254,

                  
                  ),)),
            
              ),
            
            TextField(
              controller: _senhaController,
                style: TextStyle(color:Colors.white),
              decoration: const InputDecoration(labelText: 'Senha',
               labelStyle: TextStyle(fontSize: 20,
                   color: Color.fromARGB(255, 255, 254, 254,

                  
                  ),)),
            
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style:  ElevatedButton.styleFrom (
                    textStyle: TextStyle(fontSize: 25),
                      primary: Colors.transparent,
                      onPrimary: 
                      Colors.white,
                  
                  
                  ),
                  
  
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen()),
                   );
              },
              child: const Text('entrar',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),),
            ),
            SizedBox(height: 20),
            
    TextButton(
      onPressed: () {
        
        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Senha(
                              
                              )),
        );
      },
      child: Text('esqueceu sua senha?'),
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
     
      
      
      );

  
  }
}