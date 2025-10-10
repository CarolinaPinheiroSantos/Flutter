import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const TelaCartao());
}

class TelaCartao extends StatefulWidget {
  const TelaCartao({super.key});

  @override
  State<TelaCartao> createState() => _TelaCartaoState();
}

class _TelaCartaoState extends State<TelaCartao> {
  int Index = 0;

  final List<String> images = [
    './assets/images/cartao1.png',
    './assets/images/cartao2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),


        appBar: AppBar(toolbarHeight: 110, backgroundColor: Color(0xFFE2536C), title: Row(
          children: [
            Icon(Icons.account_circle, color: Colors.white, size: 50,),
            SizedBox(width: 30),
            Text("Olá Carolina", style: TextStyle(color: Colors.white)),
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
              height: 220,
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
                      Text("Fatura atual"),
                      SizedBox(height: 20),
                      Text("RS 632,85", style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.w900)),
                    ],),

                  Image.asset("../assets/images/linha.png"),

                  Row(
                    children: [
                      Container(
                        
                        width: 40,
                        height: 40,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),  
                          color: Color(0xFFC95C9F),
                        ),
                        child: Icon(Icons.shopping_cart_outlined, size: 10),
                      )
                      
                      
                    ],
                  )
                  
                ],
              )
              
              
            ),
              
            
        ],
        )
      ),
    );
  }
}