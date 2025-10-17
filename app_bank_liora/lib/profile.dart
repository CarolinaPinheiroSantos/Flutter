import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color:  Color(0xFFE2536C),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80),
            ),
            ),
            child:   
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, bottom: 15),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset("../assets/images/person.jpg",
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),),

                  Padding(
                    padding: EdgeInsets.only(right: 120),
                    child: 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Carolina", style: TextStyle(fontSize: 20, color: Colors.white),),
                          SizedBox(height: 8,),
                          Text("Banco 170 - Go bank S.A.", style: TextStyle(fontSize: 13, color: Colors.white),),
                          Text("Agência 0001", style: TextStyle(fontSize: 13, color: Colors.white)),
                          Text("Conta 1467023-9", style: TextStyle(fontSize: 13, color: Colors.white)),
                        ],
                      ),
                  ),
                ],
              ),
            )),


            //partes da configuração
            SizedBox(height: 20,),
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),  
                color: Color(0xFFFFFFFF),
              ),

              child: 
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 20, right: 20),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Configuração de Perfil"),
                        Text(">", style: TextStyle(color:Color(0xFFE2536C), fontWeight: FontWeight.bold),)
                      ],
                    ),
                )
            ),

            SizedBox(height: 20,),

            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),  
                color: Color(0xFFFFFFFF),
              ),

              child: 
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 20, right: 20),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Configuração de Conta"),
                        Text(">", style: TextStyle(color:Color(0xFFE2536C), fontWeight: FontWeight.bold),)
                      ],
                    ),
                )
            ),

            SizedBox(height: 20,),

            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),  
                color: Color(0xFFFFFFFF),
              ),

              child: 
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 20, right: 20),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Solicitar Emprestimo"),
                        Text(">", style: TextStyle(color:Color(0xFFE2536C), fontWeight: FontWeight.bold),)
                      ],
                    ),
                )
            ),

            SizedBox(height: 20,),

            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),  
                color: Color(0xFFFFFFFF),
              ),

              child: 
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 20, right: 20),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Redefinir Senha"),
                        Text(">", style: TextStyle(color:Color(0xFFE2536C), fontWeight: FontWeight.bold),)
                      ],
                    ),
                )
            ),
        ],
      ),
    );
  }
}