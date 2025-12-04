import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  String? value;
  
  @override
  void initState(){
    super.initState();
    getvalue();
  }

  void getvalue() async {
    final response = await http.get(Uri.parse("https://viacep.com.br/ws/01001000/json/ "));
    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      setState(() {
      value = data["logradouro"];
      });
    }

  }


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: value == null ? CircularProgressIndicator() : Text("$value")
      ),
    );
  }
}