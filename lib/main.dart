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
        ), 
      ),
    );
  }
}