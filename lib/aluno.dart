import 'package:conectec/inicio.dart';
import 'package:flutter/material.dart';


class User extends StatelessWidget {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  User({super.key, required String email});

  void _signup() {
    final nome = _nomeController.text;
    final email = _emailController.text;
    final senha = _senhaController.text;

  

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     appBar: AppBar(
        title: Text ("Cadastro de usuário"),
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
            Text("CADASTRE-SE",
            style: TextStyle (fontSize: 40,
            color:Color.fromARGB(255, 255, 254, 254),

                  
                  ),
            ) ,
            TextField(
              controller: _nomeController,
              style: TextStyle(color:Colors.white),
              decoration: InputDecoration(labelText: 'Nome Completo: ',
               labelStyle: TextStyle(fontSize: 20,
                   color: Color.fromARGB(255, 255, 254, 254,

                  
                  ),)),
            
            
            ),
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
              child: const Text('Cadastrar',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),),
            ),
          ],
        ),
      ),
    );
  }
}
