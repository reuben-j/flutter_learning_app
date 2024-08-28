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
          backgroundColor: Color.fromARGB(138, 136, 255, 180),
        ),
        backgroundColor: Color.fromARGB(255, 0, 180, 66), 
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}