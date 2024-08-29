import 'package:flutter/material.dart';

void main() { // this function is called when button 'run' is hit
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(    
        appBar: AppBar(
          title: Text("Page Title"),          
          backgroundColor: Color.fromARGB(195, 4, 170, 65),
        ),
        body: Text("Body"),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home)
            ), BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home)
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}