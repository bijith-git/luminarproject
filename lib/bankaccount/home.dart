import 'package:flutter/material.dart';
import 'package:luminarproject/bankaccount/components/components.dart';

import 'components/transaction.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BankHome(),
  ));
}

class BankHome extends StatefulWidget {
  BankHome({Key? key}) : super(key: key);

  @override
  State<BankHome> createState() => _BankHomeState();
}

class _BankHomeState extends State<BankHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Center(
            child: Text("Welcome! Sammunatitra"),
          ),
          actions: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.qr_code_2),
            )
          ]),
      body: ListView(
        children: [
          ProfileView(
            size: size,
          ),
          const ListTile(
            leading: Icon(
              Icons.auto_awesome,
              color: Colors.red,
              size: 33,
            ),
            title: Text(
              "would you like to ?",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
          ),
          GridTiles(
            size: size,
          ),
          const ListTile(
            leading: Icon(
              Icons.auto_awesome,
              color: Colors.red,
              size: 33,
            ),
            title: Text(
              "Last Transactions",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
          ),
          TransactionTile(size: size, red: Color.fromARGB(255, 206, 26, 13)),
          TransactionTile(size: size, red: Color.fromARGB(255, 206, 26, 13)),
          TransactionTile(size: size, red: Color.fromARGB(255, 206, 26, 13))
        ],
      ),
    );
  }
}
