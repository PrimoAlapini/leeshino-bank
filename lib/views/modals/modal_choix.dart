import 'package:flutter/material.dart';
import 'package:leeshino_bank/views/modals/main_accou_mod.dart';
import 'package:leeshino_bank/views/modals/second_accou_mod.dart';

class ModalChoix extends StatefulWidget {
  // Déclare la méthode choixAccount ici, en la rendant accessible
  void choixAccount(BuildContext context, int account) {
    MainAccouMod mainAccouMod = MainAccouMod();
    SecondAccouMod secondAccouMod = SecondAccouMod();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recharge de votre carte',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              IconButton(
                icon: Icon(Icons.close, color: Colors.grey),
                onPressed: () {
                  Navigator.of(context).pop(); // Ferme le modal
                },
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Choisissez la Carte Bancaire à recharger',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop(); // Ferme le modal
                  mainAccouMod.mainCard(context); // Ouvre le modal de la carte principale
                },
                icon: Icon(Icons.credit_card, color: Colors.white),
                label: Text(
                  "Main Card",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop(); // Ferme le modal
                  secondAccouMod.secondCard(context); // Ouvre le modal de la carte secondaire
                },
                icon: Icon(Icons.credit_card, color: Colors.white),
                label: Text(
                  "Secondary Card",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  _ChoixAccount createState() => _ChoixAccount();
}

class _ChoixAccount extends State<ModalChoix> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choisissez une carte à recharger'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            // Récupère l'accountNumber de l'utilisateur connecté (par exemple)
            int account = 123456; // À remplacer par l'account de l'utilisateur connecté
            widget.choixAccount(context, account); // Appelle la méthode via l'instance `widget`
          },
          icon: Icon(Icons.credit_card, color: Colors.white),
          label: Text(
            "Recharger",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}