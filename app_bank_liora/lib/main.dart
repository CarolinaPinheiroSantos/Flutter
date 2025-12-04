import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navigation.dart';

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
      
        body: LoginPage(), 
    ),
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
      Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation()));
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/fundo_login.png"),
              fit: BoxFit.cover,
            )
          ),
          child: 
          Center(child: 
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.width * 0.8,
            
            
            child: 
           Padding(
             padding: EdgeInsets.only(left: 25, right: 25),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [              
                SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
             
                TextField(
                  controller: user,
                  maxLength: 150,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    counterText: "",
                    hintText: "Insira o seu nome",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white
                      )
                    )
                  ),
                ),
             
                SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
             
             
                TextField(
                  obscureText: true,
                  controller: password,
                  maxLength: 10,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    counterText: "",
                    hintText: "Insira o sua senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.blue
                      )
                    )
                  ),
                ),
             
                SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

                Text("$error"),

             
                ElevatedButton(onPressed: login, child: Text("Entrar")),
             
                
              ],
                       ),
           )
          
          
          
          ))
          

         
          )

        )
    
      );
  }
}


// void main() {
//   runApp(const Home());
// }

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: GoogleFonts.poppinsTextTheme()
//       ),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Color(0xFFF5F5F5),
      
//         body:   Navigation(), 
//     ),
//     );
//   }
// }


