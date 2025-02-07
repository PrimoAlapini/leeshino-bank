import 'package:flutter/material.dart';
import 'package:leeshino_bank/main.dart';
import 'package:leeshino_bank/views/modals/modal_choix.dart';
import 'package:leeshino_bank/views/page_2.dart';

void mainCardModal(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Main Card'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration:
                  InputDecoration(hintText: 'Entrez le montant à recharger'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Ferme le modal
                Future.delayed(Duration(milliseconds: 300), () {
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context) => TransfMoney()),
                  );
                });
              },
              child: Text('Recharger'),
            ),
            TextButton(
              child: Text('Annuler'),
              onPressed: () {
                Navigator.of(context).pop();
                choixAccount(context); // Ferme le modal
              },
            ),
          ],
        ),
      );
    },
  );
}
