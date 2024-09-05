import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      // darkTheme: ThemeData.dark(),

      home:
          const FirstPage(), // due to context's needing to be able to access eachother and layering,
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
                backgroundColor: const Color.fromARGB(255, 30, 255, 0)),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
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
                backgroundColor: const Color.fromARGB(255, 30, 255, 0)),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Page"),
      ),
      body: Center(
        child: SizedBox(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const FourthPage();
              }));
            },
            child: const Text("Button"),
          ),
        ),
      ),
    );
  }
}

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        shape: const BeveledRectangleBorder(),
        title: const Text("Fourth Page - Stateful Widget :)"),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        backgroundColor: const Color.fromARGB(255, 255, 174, 0),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                print("Hello");
              }, child: const Text("Hello button")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                width: 100,
                child: ElevatedButton(onPressed: () {
                  print("Byee");
                }, child: const Text("Bye button")
                
                ),
                
              ),
            ), Container(
              alignment: ,
              child: const Text('Hello, is this working?', 
              style: TextStyle(
                fontSize: 300,
                 
              ),
              ),
            )
          ],
        ),
      )
    );
  }
}
