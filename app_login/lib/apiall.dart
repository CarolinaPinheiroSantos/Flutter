import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiAll extends StatefulWidget {
  const ApiAll({super.key});

  @override
  State<ApiAll> createState() => _ApiAllState();
}

class _ApiAllState extends State<ApiAll> {
  List<dynamic>? value;
  
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
      value = data["products"];
      });
    }

  }


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: value == null ? CircularProgressIndicator() : Center(child: ListView.builder(itemCount: value.length, 
        itemBuilder: (context, index){
          final item = value![index];
          return Container(
            width: 150,
            height: 150,
            color: Colors.blue,
            child: Text("${item["name"]}"),
          );
        },),)
      ),
    );
  }
}