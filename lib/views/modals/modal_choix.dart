import 'package:flutter/material.dart';
import 'package:leeshino_bank/views/modals/main_accou_mod.dart';
import 'package:leeshino_bank/views/modals/second_accou_mod.dart';

void choixAccount(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Recharge de votre carte Bancaire'),
        content: Text('Choisissez la Carte Bancaire à recharger'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Ferme ce modal
             
                mainCardModal(context); // Ouvre le 2e modal proprement
             
            },
            child: Text("Main Card"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              
                secondaryCardModal(context);
            
            },
            child: Text("Secondary Card"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();  // Ferme le modal
            },
            child: Text('Fermer'),
          ),
        ],
      );
    },
  );
}
