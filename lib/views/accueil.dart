import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageWidget();
}

class _HomePageWidget extends State<HomePage> {

  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Another Person >"), Icon(Icons.qr_code)],
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
                Text("\$7,1582.21"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("ADD MONEY")),
                    ElevatedButton(onPressed: () {}, child: Text("TRANSFER"))
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
                    children: [Text("Primary Card"), Text("~ 7289")],
                  ),
                  Text("\$2,874.85")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Secondary debit Card"), Text("~ 7289")],
                  ),
                  Text("\$4,235.00")
                ],
              )
            ],
          ),
        ),
  Scrollbar(
          thumbVisibility: true,
          trackVisibility: true,
          controller: _firstController,
          
          child: SingleChildScrollView(
            controller: _firstController,
            child: Column( 
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("TRANSACTIONS"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 209, 206, 197)),
                      child: Icon(Icons.media_bluetooth_off, size: 40,),
                    ),
                    Column(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Figma"), Text("Today, 12:30 pm")],
                    )
                  ],
                ),
                Text("-\$120.00")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 209, 206, 197)),
                      child: Icon(Icons.mobiledata_off, size: 40,),
                    ),
                    Column(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Btc"), Text("Today, 12:30 pm")],
                    )
                  ],
                ),
                Text("+\$20.00")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 209, 206, 197)),
                      child: Icon(Icons.account_balance_wallet, size: 40,),
                    ),
                    Column(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Primo"), Text("Today, 12:30 pm")],
                    )
                  ],
                ),
                Text("+\$1120.00")
              ],
            )
          ],
        ),
          ) 
 )
     ],
    );
  }
}
