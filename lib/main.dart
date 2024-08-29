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
          child: SizedBox(
            width: double.infinity,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        button_name = "Yeiw";
                      });
                    },
                    child: Text(button_name),),
                    ElevatedButton(
                    onPressed: () {
                      setState(() {
                        button_name = "Yeiw";
                      });
                    },
                    child: Text(button_name),)
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: "Yo Bro",
                backgroundColor: Colors.black,
                icon: Icon(Icons.home, color: Colors.black, size: 24)),
            BottomNavigationBarItem(
                label: "Hey man",
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
