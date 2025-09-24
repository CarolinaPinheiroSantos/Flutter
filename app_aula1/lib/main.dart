import 'package:flutter/material.dart';

void main() {
  runApp(
    // const MyApp()
    const Challenge()
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Olá user do meu coração", style: TextStyle(fontSize: 40, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.grey,
        toolbarHeight: 150,
        ),
        body:
        
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5, 
              height: MediaQuery.of(context).size.height * 0.2, 
              color: Colors.yellow,),
              
            Container(width: double.infinity, height: 110, color: Colors.orange,),
            Container(width: 110, height: 110, color: Colors.red,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 110, height: 110, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),  
                    color: Colors.green),),
                Container(width: 110, height: 110, color: Colors.lightBlue, child: Center(child: Text("1"),),),

                Container(width: 110, height: 110, color: Colors.deepPurple, 
                  child: Center(child:Container(width: 60, height: 60, color: Colors.red,) ,)),
              ],
            )
        ],
        )
      ),
    );
  }
}

class Challenge extends StatefulWidget {
  const Challenge({super.key});

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text("Desafio de containers no flutter", style: TextStyle(fontSize: 30, color: Colors.pinkAccent),),
      centerTitle: true,
      toolbarHeight: 60,
      ),
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 150, height: 150, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),  
                    color: Colors.pink),
                  child: Center(child: Text("1", style: TextStyle(color: Colors.white),),),),

                Container(width: 150, height: 150, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),  
                    color: Colors.pink),
                  child: Center(child: Text("2", style: TextStyle(color: Colors.white),),),),
              ]
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 150, height: 150, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),  
                    color: Colors.pink),
                  child: Center(child: Text("3", style: TextStyle(color: Colors.white),),),),

                Container(width: 150, height: 150, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),  
                    border: Border.all(width: 2.0, color: Colors.pink),
                  ),
                  child: Center(child: Text("4", style: TextStyle(color: Colors.pink,),),),

            )
            ]
            ),
            SizedBox(height: 30,),
            Image.network("https://media.licdn.com/dms/image/v2/D4D12AQGdRpheU0CoVA/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1707741151561?e=2147483647&v=beta&t=uS4UQlqCWcaK31M2lQHymuy0UXIUP_qcPuTeWZ3SHD4",
            width: 350,),
          ],
          
        ),
        
      
      ),
    );
  }
}