import 'package:flutter/material.dart';
import 'package:leeshino_bank/views/accueil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Primo todo",scrollBehavior: MaterialScrollBehavior(),
        home: Scaffold(
            bottomNavigationBar:
                BottomNavigationBar(items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Color.fromARGB(255, 236, 159, 16),),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business, color: Color.fromARGB(255, 236, 159, 16)),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message, color: Color.fromARGB(255, 236, 159, 16)),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Color.fromARGB(255, 236, 159, 16)),
                label: 'Setting',
              ),
            ]),
            appBar: AppBar(
              title: Text("LeeShino Bank"),
            ),
            body: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: HomePage(),
              ),
            )));
  }
}
