import 'package:flutter/material.dart';

class TransfMoney extends StatefulWidget {
  const TransfMoney({super.key});

  @override
  TransformState createState() => TransformState();
}

class TransformState extends State<TransfMoney> {
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
        SizedBox( height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Column(
              children: [
                 ClipOval(
            child: Image.asset(
              "assets/images/gojo.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            )
          ),
          Text("Gojo"),
          Text("Satoru"),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 100,   
            height: 1, 
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
               
              )

            ),
          )
              ],
            ),
            SizedBox(width: 35),

            Column(
              children: [
                 ClipOval(
            child: Image.asset(
              "assets/images/gojo.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            )
          ),
          Text("Gojo" , style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Satoru",  style: TextStyle(fontWeight: FontWeight.bold)),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 100,   
            height: 1, 
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 45, 49, 41),
                width: 2,
               
              )

            ),
          )
              ],
            ),
           SizedBox(width: 35),

            Column(
              children: [
                 ClipOval(
            child: Image.asset(
              "assets/images/gojo.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            )
          ),
          Text("Gojo"),
          Text("Satoru"),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 100,   
            height: 1, 
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
               
              )

            ),
          )
              ],
            ),
            SizedBox(width: 35),

            Column(
              children: [
                 ClipOval(
            child: Image.asset(
              "assets/images/gojo.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            )
          ),
          Text("Gojo"),
          Text("Satoru"),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 100,   
            height: 1, 
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
               
              )

            ),
          )
              ],
            ),
          ],
        ),

        SizedBox(height: 35),
        Column(
          children: [
           SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("\$5|", 
              style: TextStyle(fontSize: 64.0, color: const Color.fromARGB(255, 45, 49, 41),),),
              Text(".00", 
              style: TextStyle(fontSize: 64.0, color: Colors.grey),)
              ],
            ),
             SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 55,
                     
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 236, 230),   // Couleur de l'arrière-plan
                        borderRadius: BorderRadius.circular(25.0), // Coins arrondis
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "\$5", 
                        style: TextStyle(
                          
                          fontSize: 18.0, 
                          color: const Color.fromARGB(255, 45, 49, 41),  // Couleur du texte
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 55,
                     
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 236, 230),   // Couleur de l'arrière-plan
                        borderRadius: BorderRadius.circular(25.0), // Coins arrondis
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "\$10", 
                        style: TextStyle(
                          
                          fontSize: 18.0, 
                          color: const Color.fromARGB(255, 45, 49, 41),  // Couleur du texte
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 55,
                     
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 236, 230),   // Couleur de l'arrière-plan
                        borderRadius: BorderRadius.circular(25.0), // Coins arrondis
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "\$20", 
                        style: TextStyle(
                          
                          fontSize: 18.0, 
                          color: const Color.fromARGB(255, 45, 49, 41),  // Couleur du texte
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 55,
                     
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 236, 230),   // Couleur de l'arrière-plan
                        borderRadius: BorderRadius.circular(25.0), // Coins arrondis
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "\$50", 
                        style: TextStyle(
                          
                          fontSize: 18.0, 
                          color: const Color.fromARGB(255, 45, 49, 41),  // Couleur du texte
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 65,
                     
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 236, 230),   // Couleur de l'arrière-plan
                        borderRadius: BorderRadius.circular(25.0), // Coins arrondis
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "\$100", 
                        style: TextStyle(
                          
                          fontSize: 18.0, 
                          color: const Color.fromARGB(255, 45, 49, 41),  // Couleur du texte
                        ),
                      ),
                    ),
                  ],
              ),
              SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 950,   
              height: 1, 
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 45, 49, 41),
                  width: 1,
                
                )

            ),
          )
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
           SizedBox(height: 50),
              
                Text(
                  "\1",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  ),
                   SizedBox(width: 50),
                Text(
                  "\2",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  ),
                  SizedBox(width: 50),
                Text(
                  "\3",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            SizedBox(height: 50),
                Text(
                  "\4",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  ),
                   SizedBox(width: 50),
                Text(
                  "\5",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  ),
                  SizedBox(width: 50),
                Text(
                  "\6",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
           SizedBox(height: 50),
                Text(
                  "\7",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  ),
                   SizedBox(width: 50),
                Text(
                  "\8",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  ),
                  SizedBox(width: 50),
                Text(
                  "\9",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            SizedBox(height: 50),
                Text(
                  ".",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  ),
                   SizedBox(width: 50),
                Text(
                  "0",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  ),
                  SizedBox(width: 50),
                Text(
                  "=",
                   style: TextStyle(fontSize: 21.0, 
                   color: const Color.fromARGB(255, 45, 49, 41),) 
                  )
              ],
            )
          ],
        )
      ],
    );
  }
}
