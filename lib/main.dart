import 'package:flutter/material.dart';

// https://api.flutter.dev/flutter/material/Icons-class.html
// flutter icons^^

void main() {
  // this function is called when button 'run' is hit
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String button_name = "Click";
  String button2 = "Nice one!";
  int num1 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Page Title"),
          backgroundColor: const Color.fromARGB(195, 4, 170, 65),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  button_name = "Next";
                });
                
              },
              child: Text(button_name),),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: "Home",
                backgroundColor: Colors.black,
                icon: Icon(Icons.home, color: Colors.black, size: 24)),
            BottomNavigationBarItem(
                label: "Settings",
                icon: Icon(Icons.settings, color: Colors.black, size: 24))
          ],
          currentIndex: num1,
          onTap: (int index){
            setState(() {
              num1 = index;
            });
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
