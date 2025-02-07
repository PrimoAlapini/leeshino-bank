import 'package:leeshino_bank/bdd/add_money_data.dart';
import 'package:leeshino_bank/models/add_money_model.dart';

class AddMoneyController {
  
  final List<AddMoney> _addList = [...transactions];

  bool checkUsersData() => _addList.isNotEmpty;

  Map<String, dynamic> getAllData() {
    if (checkUsersData()) {
      return {
        "status": 200,
        "message": "Données récupérées avec succès",
        "data": _addList
      };
    } else {
      return {
        "status": 400,
        "message": "Aucun utilisateur trouvé",
        "data": []
      };
    }
  }

  List<AddMoney> getAddTransactions(int account) {
    List<AddMoney> listTransaction = [];

    for (AddMoney el in _addList) {
      if (el.account == account) {
        listTransaction.add(el);
      }
    }

    return listTransaction;
  }

  AddMoney getOneTransaction(int id) {
    return _addList.firstWhere((el) => el.id == id);
  }
  
}
