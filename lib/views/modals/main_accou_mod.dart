import 'package:flutter/material.dart';
import 'package:leeshino_bank/controllers/add_money_controller.dart';
import 'package:leeshino_bank/models/user_model.dart';
import 'package:leeshino_bank/bdd/user_data.dart'; // Où tu récupères la liste des utilisateurs

class MainAccouMod {

  void mainCard(BuildContext context) {
    final List<UserModel> _users = [...users]; // Liste des utilisateurs
    TextEditingController montantController = TextEditingController();
    AddMoneyController addMoneyController = AddMoneyController();

    // On suppose que l'utilisateur connecté est le premier de la liste, mais ça devrait être dynamique
    UserModel currentUser = _users[0]; // Remplacer par l'utilisateur connecté dynamique

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          title: Row(
            children: [
              Text(
            'Main Card',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 110),
          // Bouton Annuler avec une croix
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.grey),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Champ de texte pour le montant
              TextField(
                controller: montantController,
                decoration: InputDecoration(
                  hintText: 'Entrez le montant à recharger',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Vérifier que les champs ne sont pas vides
                  if (montantController.text.isNotEmpty) {
                    double montant = double.parse(montantController.text);

                    // Appeler la fonction ajoutMoney avec les valeurs saisies
                    addMoneyController.ajoutMoney(montant, currentUser.accountNumber);

                    // Fermer le modal et afficher un message de succès
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Compte rechargé avec succès 💯👌"),
                    ));
                  } else {
                    // Afficher une erreur si les champs sont vides
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Veuillez entrer un montant"),
                    ));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('Recharger'),
              ),
              
              
            ],
          ),
        );
      },
    );
  }
}