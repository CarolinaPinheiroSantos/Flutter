import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),


        appBar: AppBar(toolbarHeight: 100, backgroundColor: Color(0xFFE2536C), title: Row(
          children: [
            Icon(Icons.account_circle, color: Colors.white, size: 50,),
            SizedBox(width: 30),
            Text("Olá, Carolina", style: TextStyle(fontSize: 18, color: Colors.white)),
          ],
        )),
      
        body:   Navigation(), // ⬅️ aqui você chama seu componente com o BottomNavigationBar
    ),
    );
  }
}
