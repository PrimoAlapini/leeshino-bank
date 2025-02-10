class AddMoney {
  final int _id;
  double montant;
  final DateTime date = DateTime.now();
  int account;

  AddMoney(this._id, {required this.montant, required this.account});

  int get id => _id;
  
}