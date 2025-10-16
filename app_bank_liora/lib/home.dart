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
      body: Column( 
        children: [
          SizedBox(height: 30),
          Container(
            width: 400,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFFFFFFF),
            ),
            child:   
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Saldo em conta", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),),
                Text("R\$ 0,04", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)

              ]
            ),
            
          ),
          SizedBox(height: 50),

          Container(
            width: 400,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("../assets/images/miniCard1.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
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
              color: const Color(0xFFFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("../assets/images/miniCard2.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Martercard",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text("****1574"),
                    ],
                  ),
                  const SizedBox(width: 70),
                  const Text(
                    "R\$ 1.041,04 >",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
