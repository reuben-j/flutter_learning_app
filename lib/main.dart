import 'package:flutter/material.dart';

void main() {
  runApp(const NavApp());
}


class NavApp extends StatefulWidget {
  const NavApp({super.key});

  @override
  State<NavApp> createState() => _NavAppState();
}

class _NavAppState extends State<NavApp> {

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(), // due to context's needing to be able to access eachother and layering,
      // create a new class for first page and implement it like this
      debugShowCheckedModeBanner: false,
    );
  }
}

// below is the actual code for firstpage()
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Page"),
        ),
        body: Center(
          child: SizedBox(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 1, 1, 1),
                backgroundColor: const Color.fromARGB(255, 30, 255, 0)
              ), onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return const SecondPage();
                }));
              },
              child: const Text("Button"),
            ),
          ),
        ), 

      );
  }
}

// this is the code for the second page

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
          child: SizedBox(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 1, 1, 1),
                backgroundColor: const Color.fromARGB(255, 30, 255, 0)
              ), onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return const ThirdPage();
                }));
              },
              child: const Text("Button"),
            ),
          ),
        ), 

    );
}
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Third Page"),),
      body: Center(
        child: SizedBox(
          child: ElevatedButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return const FirstPage();
                }));
          }, child: const Text("Button"),),
          
        ),
      ),
    );
}
}