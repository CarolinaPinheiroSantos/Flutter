import 'package:app_aula3/tela2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const roteApp());
}


class roteApp extends StatelessWidget {
  const roteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaHome(),
    );
  }
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.oswaldTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Temperatura do dia"), centerTitle: true,),
        body: Center(
          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  // Image.network("https://marketplace.canva.com/N50gU/MAFfKSN50gU/1/tl/canva-weather-icons---sunny-MAFfKSN50gU.png",
                  // width: 150,),

                  // Image.asset("../assets/images/arco_iris.png",
                  // width: 220,),                  

                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset("../assets/images/arco_iris.png", width: 180,),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset("../assets/images/sol.png", width: 180,),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Image.asset("../assets/images/nuvem.png", width: 180,),
                  )


                ], //children
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Arco iris"),

                  Text("Solzinho"),

                  Text("Frio")
                ],
              ),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tela2()))
              },
              child: Text("Proxima tela"))
            ], //children
          ),
        ),
      ),
    );
  }
}