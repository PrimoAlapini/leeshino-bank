import 'package:leeshino_bank/bdd/add_money_data.dart';
import 'package:leeshino_bank/bdd/user_data.dart';
import 'package:leeshino_bank/controllers/user_controller.dart';
import 'package:leeshino_bank/models/add_money_model.dart';
import 'package:leeshino_bank/models/user_model.dart';

class AddMoneyController {
  final List<UserModel> _users = [...users]; // Liste des utilisateurs
  final List<AddMoney> _transactions = [...transactions];
  final UserController _userController =
      UserController(); // Liste des transactions

  int tranId = 0;

  // Méthode pour recharger le compte bancaire
  void ajoutMoney(double montant, int accountNumber) {
    // Trouve l'utilisateur connecté avec l'accountNumber
    UserModel? user = _users.firstWhere(
      (user) => user.accountNumber == accountNumber,
      orElse: () => UserModel(
          name: "Non Trouvé",
          email: "",
          password: "",
          accountNumber: 0), // Si non trouvé
    );

    // Si l'utilisateur est trouvé
    if (user.accountNumber != 0) {
      // Trouve la transaction correspondant à l'accountNumber de l'utilisateur
      AddMoney addMyMoney =
          AddMoney(tranId++, montant: montant, account: user.accountNumber);

      // Si la transaction existe, on ajoute l'argent

      _transactions.add(addMyMoney);
      _userController.updateBalance(accountNumber, montant);
      print("✅ Transaction mise à jour avec succès !");
    }
  }
}
