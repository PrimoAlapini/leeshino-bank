import 'package:leeshino_bank/models/user_model.dart';
import 'package:leeshino_bank/bdd/user_data.dart';


class UserController {
  final List<UserModel> _users = [...users];

  // méthode pour vérifier la présence de data dans la bdd
  bool checkUserData() => _users.isNotEmpty;

  Map<String, dynamic> getAllData() {
    if (checkUserData()) {
      return {
        "status": 200,
        "message": "Données récupérées avec succès 💯✅",
        "data": _users
      };
    } else {
      return {
        "status": 400,
        "message": "Aucune données trouvées ❌😫",
        "data": []
      };
    }
  }

  bool checkUserExist(String nameOrEmail) {
    return _users
        .any((user) => user.name == nameOrEmail || user.email == nameOrEmail);
  }

  bool marchPassForUser(String nameOrEmail, String password) {
      return _users.any((user) => (user.name == nameOrEmail || user.email == nameOrEmail) && user.password == password);
    
  }
}
