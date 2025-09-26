import 'package:flutter/material.dart';

void main() {
  runApp(const Contador());
}


class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  // voce coda aquiiiiiii
  int valor = 0;

  void aumentar(){
    setState(() {
      valor++;
    });
  }

  void diminuir(){
    setState(() {
      valor--;
    });
  }

  void resetar(){
    setState(() {
      valor = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Bem vindo ao contador da Carol!", style: TextStyle(fontSize: 30, color: Colors.deepPurple, fontWeight: FontWeight.bold),),centerTitle: true,),
        body: Column(
          children: [
            SizedBox(height: 90,),
            Text("$valor", style: TextStyle(fontSize: 120),),
            SizedBox(height: 90,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  diminuir();
                }, child: Icon(Icons.remove, size: 50)),

                ElevatedButton(onPressed: (){
                  resetar();
                }, child: Icon(Icons.restore, size: 50)),

                ElevatedButton(onPressed: (){
                  aumentar();
                }, child: Icon(Icons.add, size: 50)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
