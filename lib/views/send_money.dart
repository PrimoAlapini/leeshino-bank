import 'package:flutter/material.dart';
import 'package:leeshino_bank/controllers/transfer_money.controller.dart';

class TransfMoney extends StatefulWidget {
  const TransfMoney({super.key});

  @override
  TransformState createState() => TransformState();
}

class TransformState extends State<TransfMoney> {
  final TransferMoneyController _controller = TransferMoneyController();
  final TextEditingController _amountController = TextEditingController();
  
  int senderAccount = 345678901;
  int receiptAccount = 234567890;

  void click() {
    double? montant = double.tryParse(_amountController.text);
    if (montant == null || montant <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Veuillez entrer un montant valide.")),
      );
      return;
    }

    String result = _controller.addTransfer(
      _controller.transfers.length + 1,
      montant,
      "Transfert rapide",
      senderAccount,
      receiptAccount,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(result)),
    );

    if (result == "Transfert effectué avec succès !") {
      setState(() {
        _amountController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.arrow_back_ios),
              Text(
                "Transfert Money",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const Icon(Icons.search)
            ],
          ),
          SizedBox(height: 50),

          // Zone d'affichage des utilisateurs
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              userCard("assets/images/gojo.jpeg", "Soujirou", "SouleTranchant"),
              SizedBox(width: 20),
              userCard("assets/images/gojo.jpg", "Gojo", "Satoru"),
              SizedBox(width: 20),
              userCard("assets/images/gojo-satoru-jjk-saison-1.png", "Naruto", "Uzumaki"),
              SizedBox(width: 20),
              userCard("assets/images/jujutsu-kaisen-theme-ih12.jpg.", "Shinra", "Kusakabe"),
            ],
          ),

          SizedBox(height: 20),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Montant à transférer",
              border: OutlineInputBorder(),
              prefixText: "\$",
            ),
          ),

          SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 65,
            child: ElevatedButton(
              onPressed: click,
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 13, 26, 13),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Supprime l'arrondi
                ),
                alignment: Alignment.center,
              ),
              child: Text(
                "SEND",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white, // Couleur du texte
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget userCard(String imagePath, String name, String surname) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        Text(name, style: TextStyle(fontSize: 20)),
        Text(surname, style: TextStyle(fontSize: 20)),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 100,
          height: 1,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
          ),
        )
      ],
    );
  }
}
