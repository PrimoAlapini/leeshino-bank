import 'package:flutter/material.dart';
import 'package:leeshino_bank/controllers/user_controller.dart';
import 'package:leeshino_bank/models/user_model.dart';

class Dashbord extends StatefulWidget {
  final String username;
  const Dashbord({super.key, required this.username});

  @override
  State<Dashbord> createState() => _DashbordWidget();
}

class _DashbordWidget extends State<Dashbord> {

  final ScrollController _firstController = ScrollController();
  final UserController _userController = UserController();
  UserModel? user;
  @override
  void initState() {
    super.initState();
    // Code à exécuter avant que le widget soit monté
    user = _userController.getUser(widget.username);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("${user?.name}>"), Icon(Icons.qr_code)],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Center(
            child: Column(
              spacing: 10,
              children: [
                Text("Balance"),
                Text("\$${user?.balance}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 209, 206, 197)), child: Text("ADD MONEY") ),
                    ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 209, 206, 197)), child: Text("TRANSFER"))
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(), top: BorderSide())),
          child: Column(
            spacing: 20,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Primary Card", style: TextStyle(fontWeight: FontWeight.bold),), Text("~ 7289")],
                  ),
                  Text("\$2,874.85", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Secondary debit Card", style: TextStyle(fontWeight: FontWeight.bold),), Text("~ 7289")],
                  ),
                  Text("\$4,235.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                ],
              )
            ],
          ),
        ),
  
     ],
    );
  }
}
