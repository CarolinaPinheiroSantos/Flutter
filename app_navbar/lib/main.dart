import 'package:flutter/material.dart';
import 'tela1.dart';
import 'tela2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int myIndex = 0;

  void changeIndex(int index){
    setState(() {
      myIndex = index;
      
    });
  }

  List<Widget> screens = [
    Tela1(),
    Tela2(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens.elementAt(myIndex),
        bottomNavigationBar: 
          BottomNavigationBar(items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(label: "Tela 1", icon:Icon(Icons.ac_unit)),
            BottomNavigationBarItem(label: "Tela 2", icon:Icon(Icons.ac_unit)),
          ],
        currentIndex: myIndex,
        onTap: changeIndex,
      ),
      )
    );
  }
}