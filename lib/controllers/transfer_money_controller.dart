import 'package:leeshino_bank/bdd/transfer_money_data.dart';
import 'package:leeshino_bank/models/transfer_money_model.dart';

class TransferMoneyController {
  
  final List<TransferMoney> _transfers = [...transfers];

  bool checkUsersData() => _transfers.isNotEmpty;

  Map<String, dynamic> getAllTransfers() {
    if (checkUsersData()) {
      return {
        "status": 200,
        "message": "Données récupérées avec succès",
        "data": _transfers
      };
    } else {
      return {
        "status": 400,
        "message": "Aucun utilisateur trouvé",
        "data": []
      };
    }
  }

  List<TransferMoney> getTransfers(int account) {
    List<TransferMoney> listTransaction = [];

    for (TransferMoney el in _transfers) {
      if (el.senderAccount == account) {
        listTransaction.add(el);
      }
    }

    return listTransaction;
  }

  TransferMoney getOneTransfer(int id) {
    return _transfers.firstWhere((el) => el.id == id);
  }
  
}