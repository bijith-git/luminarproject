import 'package:flutter/material.dart';

import 'components/listtile.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    ),
  );
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          flexibleSpace: Center(
              child: Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          )),
          toolbarHeight: 130,
          actions: [Icon(Icons.more_vert)]),
      body: Container(
        child: ListView(
          children: [
            ListTiles(
              show: true,
              title: "I'm looking for a teacher",
              color: Colors.green,
            ),
            ListTiles(
              show: false,
              title: "I'm looking  a teacher",
              color: Color.fromARGB(192, 196, 193, 193),
            ),
            ListTiles(
              show: false,
              title: "I'm looking  a teacher",
              color: Color.fromARGB(192, 196, 193, 193),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          backgroundColor: Colors.green,
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person_add), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: "")
          ]),
    );
  }
}
