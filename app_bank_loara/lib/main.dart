import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const TelaCartao());
}

class TelaCartao extends StatefulWidget {
  const TelaCartao({super.key});

  @override
  State<TelaCartao> createState() => _TelaCartaoState();
}

class _TelaCartaoState extends State<TelaCartao> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Row(
          children: [
            
            Icon(Icons.account_circle, color: Colors.white),
          ],
        )),
      ),
    );
  }
}