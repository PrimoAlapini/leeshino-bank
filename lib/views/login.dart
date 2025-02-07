import 'package:flutter/material.dart';
import 'package:leeshino_bank/controllers/user_controller.dart';
import 'package:leeshino_bank/views/page_2.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameOrEmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  UserController userController = UserController();

  String nameOrEmail = "";

  void clearInput() {
    _nameOrEmailController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 15),
            TextFormField(
              controller: _nameOrEmailController,
              decoration: InputDecoration(
                  labelText: ' Nom ou Email', border: OutlineInputBorder()),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Veuillez entrer votre email ou Nom !";
                }
                value = value.trim();
                if (value.trim().isEmpty ||
                    !userController.checkUserExist(value)) {
                  return "Veuillez entrer un email valide ou un nom valide || Données Existantes !";
                }

                nameOrEmail = value;
                return null;
              },
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              obscuringCharacter: '•',
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Veuillez entrer votre Mot de passe !";
                }
                if (value.length < 8) {
                  return "Le mot de passe doit dépasser 8 caractères";
                }
                value = value.trim();
                if (!userController.marchPassForUser(nameOrEmail, value)) {
                  return "Mot de passe incorrect";
                }
                return null;
              },
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print("""
                        Données utilisateur:
                        Nom ou email: $_nameOrEmailController,
                        Password: $_passwordController
                    """);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Traitement en cours ....."),
                  ));
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => TransfMoney()),
                  );
                }
              },
              child: Text("Connecter"),
            )
          ],
        ),
      ),
    );
  }
}
