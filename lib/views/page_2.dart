import 'package:flutter/material.dart';

class TransfMoney extends StatefulWidget {
  const TransfMoney({super.key});

  @override
  TransformState createState() => TransformState();
}

class TransformState extends State<TransfMoney> {
  void click() {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.arrow_back_ios),
            Text(
              "Transfert Money",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.search)
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ClipOval(
                    child: Image.asset(
                  "assets/images/gojo.jpeg",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                )),
                Text("Soujirou"),
                Text("SouleTranchant"),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 100,
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
                )
              ],
            ),
            SizedBox(width: 35),
            Column(
              children: [
                ClipOval(
                    child: Image.asset(
                  "assets/images/gojo.jpg",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                )),
                Text("Gojo", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Satoru", style: TextStyle(fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 100,
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: const Color.fromARGB(255, 45, 49, 41),
                    width: 2,
                  )),
                )
              ],
            ),
            SizedBox(width: 35),
            Column(
              children: [
                ClipOval(
                    child: Image.asset(
                  "assets/images/gojo-satoru-jjk-saison-1.png",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                )),
                Text("Naruto"),
                Text("Uzumaki"),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 100,
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
                )
              ],
            ),
            SizedBox(width: 35),
            Column(
              children: [
                ClipOval(
                    child: Image.asset(
                  "assets/images/jujutsu-kaisen-theme-ih12.jpg.",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                )),
                Text("Shinra"),
                Text("Kusakabe"),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 100,
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 30),
        Column(
          children: [
            SizedBox(height: 75),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$5|",
                  style: TextStyle(
                    fontSize: 55.0,
                    color: const Color.fromARGB(255, 45, 49, 41),
                  ),
                ),
                Text(
                  ".00",
                  style: TextStyle(fontSize: 64.0, color: Colors.grey),
                )
              ],
            ),
            SizedBox(height: 85),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 55,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 233, 236, 230), // Couleur de l'arrière-plan
                    borderRadius: BorderRadius.circular(25.0), // Coins arrondis
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "\$5",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: const Color.fromARGB(
                          255, 45, 49, 41), // Couleur du texte
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 55,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 233, 236, 230), // Couleur de l'arrière-plan
                    borderRadius: BorderRadius.circular(25.0), // Coins arrondis
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "\$10",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: const Color.fromARGB(
                          255, 45, 49, 41), // Couleur du texte
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 55,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 233, 236, 230), // Couleur de l'arrière-plan
                    borderRadius: BorderRadius.circular(25.0), // Coins arrondis
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "\$20",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: const Color.fromARGB(
                          255, 45, 49, 41), // Couleur du texte
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 55,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 233, 236, 230), // Couleur de l'arrière-plan
                    borderRadius: BorderRadius.circular(25.0), // Coins arrondis
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "\$50",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: const Color.fromARGB(
                          255, 45, 49, 41), // Couleur du texte
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 65,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 233, 236, 230), // Couleur de l'arrière-plan
                    borderRadius: BorderRadius.circular(25.0), // Coins arrondis
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "\$100",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: const Color.fromARGB(
                          255, 45, 49, 41), // Couleur du texte
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
          ],
        ),
           Divider(
                height: 1, 
              ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text("\1",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                SizedBox(width: 50),
                Text("\2",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                SizedBox(width: 50),
                Text("\3",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                    SizedBox(width: 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 50),
                Text("\4",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                SizedBox(width: 50),
                Text("\5",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                SizedBox(width: 50),
                Text("\6",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                    SizedBox(width: 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 50),
                Text("\7",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                SizedBox(width: 50),
                Text("\8",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                SizedBox(width: 50),
                Text("\9",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                    SizedBox(width: 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 50),
                Text(".",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                SizedBox(width: 50),
                Text("0",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                SizedBox(width: 50),
                Text("=",
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 45, 49, 41),
                    )),
                    SizedBox(width: 30),
              ],
            )
          ],
        ),
        SizedBox(height: 25),
        SizedBox(
          width: 2000,
          height: 115,
          child: ElevatedButton(
          onPressed: click,
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 13, 26, 13),
             
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Supprime l'arrondi
            ),
            
          alignment: Alignment.center,
          ),
            child: Text(
              "SEND \$5.00  >",
              style: TextStyle(
                fontSize: 18.0,
                color: const Color.fromARGB(
                    255, 189, 190, 187), // Couleur du texte
              ),
            ),
        ),
        )
      ],
    );
  }
}
