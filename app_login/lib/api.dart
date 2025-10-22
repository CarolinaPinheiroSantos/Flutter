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

  void getvalue(){

  }
}

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }