import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: 150,
                  height: 600,
                  color: Colors.amberAccent,
                ),

                Container(
                  width: 150,
                  height: 600,
                  color: Colors.blueAccent,
                ),


                Container(
                  width: 150,
                  height: 600,
                  color: Colors.lime,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}