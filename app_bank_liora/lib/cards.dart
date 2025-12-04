import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  int Index = 0;

  final List<String> images = [
    './assets/images/cartao1.png',
    './assets/images/cartao2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 100, backgroundColor: Color(0xFFE2536C), title: Row(
          children: [
            Icon(Icons.account_circle, color: Colors.white, size: 50,),
            SizedBox(width: 30),
            Text("Olá, Carolina", style: TextStyle(fontSize: 18, color: Colors.white)),
          ],
        )),
        body:  
        Column(
          children: [
            SizedBox(height: 35),

            // Carrossel
            CarouselSlider(
              items: images
                  .map((img) => Image.asset(img, fit: BoxFit.cover))
                  .toList(),
              options: CarouselOptions(
                height: 210,
                autoPlay: false,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() => Index = index);
                },
              ),
            ),

            // bolinha do carrossel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => Container(
                  width: Index == index ? 12 : 8,
                  height: Index == index ? 12 : 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Index == index ? Color(0xFFC95C9F) : Color(0xFFD0D5DB),
                  ),
                ),
              ),
            ),

            SizedBox(height: 50),
            
            // informacao cartao
 
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),  
                color: Color(0xFFFFFFFF),
              ),
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Fatura atual", style: TextStyle(fontSize: 18)),
                      SizedBox(height: 20),
                      Text("R\$ 632,85", style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.w900)),
                      
                    ],),
                  
                  SizedBox(height: 30),

                  Image.asset("../assets/images/linha.png"),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 22),
                      Container(
                        
                        width: 40,
                        height: 40,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),  
                          color: Color(0xFFF0862A),
                        ),
                        child: Icon(Icons.shopping_cart_outlined, size: 18, color: Colors.white),
                      ),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Comida", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,),),
                          Text("Ebanx *SuperCarol"),
                          Text("R\$ 8,50")
                        ],
                      ),
                      SizedBox(width: 5),
                      Text("15 OUT", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,),),
                      SizedBox(height: 22),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 22),

            //Melhor dia de compra
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
                        Text("Mehor dia de compra"),
                        Text("16", style: TextStyle(color:Color(0xFFE2536C), fontWeight: FontWeight.bold),)
                      ],
                    ),
                )
            ),

            SizedBox(height: 22),

            //Limite

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
                        Text("Limite Disponível"),
                        Text("R\$ 1.041,04", style: TextStyle(color:Color(0xFFE2536C), fontWeight: FontWeight.bold),)
                      ],
                    ),
                )
            ),
        ],
        ),
        
      );

  }
}