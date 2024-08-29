import 'package:flutter/material.dart';

// https://api.flutter.dev/flutter/material/Icons-class.html
// flutter icons^^

void main() {
  // this function is called when button 'run' is hit
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Page Title"),
          backgroundColor: const Color.fromARGB(195, 4, 170, 65),
        ),
        body: const Center(child: Text("Body")),
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
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
