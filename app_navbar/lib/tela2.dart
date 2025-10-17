import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                Container(
                  width: 550,
                  height: 600,
                  color: Colors.amberAccent,
                ),

                Container(
                  width: 150,
                  height: 600,
                  color: Colors.blueAccent,
                ),


                Container(
                  width: 550,
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