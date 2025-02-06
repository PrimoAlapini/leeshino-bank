import 'package:flutter/material.dart';
import 'package:leeshino_bank/views/page_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Primo todo",
        home: Scaffold(
            appBar: AppBar(
              title: Text("LeeShino Bank"),
            ),
            body: Center(
              child: TransfMoney(),
            )));
  }
  
}
