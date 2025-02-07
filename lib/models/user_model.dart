
class UserModel {
  final int _id = DateTime.now().microsecondsSinceEpoch;
  String name;
  String email;
  String password;
  int accountNumber;
  double balance;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.accountNumber,
    this.balance = 0.00
  });

  int get id => _id;
}
