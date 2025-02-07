import 'package:leeshino_bank/models/user_model.dart';
import 'package:leeshino_bank/bdd/user_data.dart' as user_data;

class UserController {
  final List<UserModel> _users = [...user_data.users];

  bool checkUsersData() => _users.isNotEmpty;

  Map<String, dynamic> getAllData() {
    if (checkUsersData()) {
      return {
        "status": 200,
        "message": "Données récupérées avec succès",
        "data": _users
      };
    } else {
      return {
        "status": 400,
        "message": "Aucun utilisateur trouvé",
        "data": []
      };
    }
  }

  bool checkUserExist(String nameOrEmail) {
    return _users.any((el) => el.name == nameOrEmail || el.email == nameOrEmail);
  }

  bool matchpasswordForUser(String nameOrEmail, String password) {
    
    return _users.any((user) => (user.name == nameOrEmail || user.email == nameOrEmail) && user.password == password);
  }

  UserModel getUser(String nameOrEmail) {
      return _users.firstWhere((user) => user.name == nameOrEmail || user.email == nameOrEmail);
  }
}