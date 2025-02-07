class TransferMoney {
  final int _id;
  double montant;
  String motif;
  final DateTime date = DateTime.now();
  int senderAccount;
  int receiptAccount;
  bool status = false;

  TransferMoney(this._id,
      {required this.montant,
      required this.motif,
      required this.senderAccount,
      required this.receiptAccount});

  int get id => _id;
}
