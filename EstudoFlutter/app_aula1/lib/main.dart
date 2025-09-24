import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //funcao que roda app
}

// para criar tela é st

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//Ele q vai prover para as telasa
      home: Scaffold(
        appBar: AppBar(title: Text("Meu primeiro app😭😭")), //barra superior
        body: Container(
          width: 50,
          height: 50,
          color: Colors.deepPurple,
        )//conteudo
      ),
    );
  }
}

