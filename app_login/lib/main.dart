import 'package:app_login/api.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  String correctUser = "carol";
  String correctPassword = "123";

  String error = "";

  void login(){
    if(user.text == correctUser && password.text == correctPassword){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ApiPage()));
    }
    else{
      setState(() {
        error = "Credenciais incorretas";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Icon(Icons.person, size: 50, color: Colors.deepOrangeAccent),


              TextField(
                controller: user,
                maxLength: 150,
                decoration: InputDecoration(
                  hintText: "Insira o seu nome",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.deepOrange
                    )
                  )
                ),
              ),


              TextField(
                obscureText: true,
                controller: password,
                maxLength: 10,
                decoration: InputDecoration(
                  hintText: "Insira o sua senha",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  )
                ),
              ),

              ElevatedButton(onPressed: login, child: Text("Entrar")),

              Text("$error")
            ],
          )
        )
      ),
    );
  }
}