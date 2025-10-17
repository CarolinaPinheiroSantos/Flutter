import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center( 
        child: 
        Column(
          children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              color:  Color(0xFFE2536C),
            ),
            child:   
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Saldo em conta", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color:  Colors.white),),
                    Text("R\$ 0,04", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color:  Colors.white),)
                    ]
                ),
                Image.asset("../assets/images/eye.png")
                ],
              ) 
              
            ),
          ),


          SizedBox(height: 50),

          //icones 
          Container(
            width: 400,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFFFFFF),
            ),
            child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        
                        width: 65,
                        height: 65,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),  
                          color: Color(0xFFE2536C),
                        ),
                        child: 
                        Icon(Icons.pix, size: 20, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text("Pix", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600), )
                    ],
                  ),      

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        
                        width: 65,
                        height: 65,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),  
                          color: Color(0xFFEDF0F2),
                        ),
                        child: Icon(Icons.payments_outlined, size: 20, color: Colors.black, ),
                      ),
                      SizedBox(height: 10),
                      Text("Transferir", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal), )
                    ],
                  ),
                  
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        
                        width: 65,
                        height: 65,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),  
                          color: Color(0xFFEDF0F2),
                        ),
                        child: Icon(Icons.attach_money, size: 20, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Text("Pagar", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal), )
                    ],
                  ),
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        
                        width: 65,
                        height: 65,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),  
                          color: Color(0xFFEDF0F2),
                        ),
                        child: 
                        Icon(Icons.sms_outlined, size: 20, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Text("Chat", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal), )
                    ],
                  ),  
                  
            ]),
          ),

          SizedBox(height: 30),

          Container(
            width: 400,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFFFFFF),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("../assets/images/miniCard1.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Martercard",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text("****1089"),
                    ],
                  ),
                  SizedBox(width: 70),
                  Text("R\$ 1.041,04 >",style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // segundo cartão
          Container(
            width: 400,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFFFFFF),
            ),
            child: 
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("../assets/images/miniCard2.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Martercard",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text("****1574"),
                    ],
                  ),
                  SizedBox(width: 70),
                  Text(
                    "R\$ 1.041,04 >",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFFFFFF),
                ),
                child:
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),),
                        child: Image.asset("../assets/images/cards.png",
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.cover,
                      ),),

                      SizedBox(height: 5,),

                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "Portabilidade de salário",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),


                    ],
                  )
              ),
            ],
          )
          ],
        )
      ),
    );
  }
}
