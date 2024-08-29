import 'package:flutter/material.dart';

// https://api.flutter.dev/flutter/material/Icons-class.html
// flutter icons^^

void main() {
  // this function is called when button 'run' is hit
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

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
            height: double.infinity,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.amberAccent,
                    backgroundColor: Color.fromARGB(1, 255, 0, 0),
                    shadowColor: const Color.fromARGB(255, 0, 170, 255),
                    
                  ),
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
