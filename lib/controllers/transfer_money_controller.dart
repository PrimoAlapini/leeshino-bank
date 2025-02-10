import 'package:leeshino_bank/models/transfert_money.model.dart';

class TransferMoneyController {
  List<TransferMoney> _transfers = [];

  // Récupérer tous les transferts
  List<TransferMoney> get transfers => _transfers;

  // Ajouter un transfert
  String addTransfer(int id, double montant, String motif, int senderAccount, int receiptAccount) {
    if (montant <= 0) {
      return "Le montant doit être supérieur à 0.";
    }
    if (senderAccount == receiptAccount) {
      return "Les comptes émetteur et récepteur doivent être différents.";
    }

    TransferMoney newTransfer = TransferMoney(
      id,
      montant: montant,
      motif: motif,
      senderAccount: senderAccount,
      receiptAccount: receiptAccount,
    );

    _transfers.add(newTransfer);
    return "Transfert effectué avec succès !";
  }
}
