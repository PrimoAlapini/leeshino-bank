import 'package:flutter/material.dart';
import 'package:leeshino_bank/views/page_2.dart';
import 'package:leeshino_bank/views/login.dart';
import 'package:leeshino_bank/views/modals/modal_choix.dart';

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
      home: TransfMoney(),
      
    );
  }
}

// class HomePage extends StatelessWidget {

//   ModalChoix choixAccount = ModalChoix();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("LeeShino Bank"),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: ElevatedButton(
//               onPressed: () {
//                 // Appel à la méthode choixAccount
//                 choixAccount.choixAccount(context, 123456); // Passe un compte valide ici
//               },
//               child: Text("Add Money"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

