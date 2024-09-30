import 'package:flutter/material.dart';
class Senha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperação de senha'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final email = 'usuario@example.com';
            
          },
          child: Text('Enviar link de recuperação de senha'),
        ),
      ),
    );
  }
}