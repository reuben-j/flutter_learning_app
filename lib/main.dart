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
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Page Title"),
          backgroundColor: const Color.fromARGB(255, 93, 153, 255),
        ),
        body: Center(
          // if else statement to change what view is seen depending on the index
          child: currentIndex == 0 ? Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(255, 216, 255, 254),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color.fromARGB(255, 162, 0, 255),
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
                    child: Text("Nav"),),
                    ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color.fromARGB(255, 162, 0, 255),
                  ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext){
                        return const pagetwo();
                      },));
                    },
                    child: Text(button_name),)
              ],
            ), 
          ) : Image.asset('images/PEAPrac1.png')
          

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
          currentIndex: currentIndex,
          onTap: (int index){
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class pagetwo extends StatelessWidget {
  const pagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
