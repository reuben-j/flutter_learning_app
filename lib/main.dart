import 'package:flutter/material.dart';

void main() {
  runApp(const nap_app());
}

// ignore: camel_case_types
class nap_app extends StatefulWidget {
  const nap_app({super.key});

  @override
  State<nap_app> createState() => _nap_appState();
}

class _nap_appState extends State<nap_app> {

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: firstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  String buttonName = "Yep";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Page"),
        ),
        body: Center(
          child: Container(
            height: 240,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 1, 1, 1),
                backgroundColor: const Color.fromARGB(255, 30, 255, 0)
              ), onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return const secondPage();
                }));
              },
              child: Text(buttonName),
            ),
          ),
        ), 
        
      );
  }
}

class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page")
      ),
    );
  }
}