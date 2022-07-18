import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:luminarproject/profileui/components/components.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileUi(),
    ),
  );
}

class ProfileUi extends StatelessWidget {
  ProfileUi({Key? key}) : super(key: key);

  List options = [
    {"icon": Icons.admin_panel_settings, "title": "Privacy", bool: false},
    {"icon": Icons.history, "title": "Purchase History", bool: false},
    {"icon": Icons.help, "title": "Help&Support", bool: false},
    {"icon": Icons.settings, "title": "Setting", bool: false},
    {"icon": Icons.share, "title": "Invite Friend", bool: false},
    {"icon": Icons.logout, "title": "Logout", bool: true}
  ];
  List icons = [
    Icons.admin_panel_settings,
    Icons.history,
    Icons.help,
    Icons.settings,
    Icons.share,
    Icons.logout,
  ];
  List titles = [
    "Privacy",
    "Purchase History",
    "Help&Support",
    "Setting",
    "Invite Friend",
    "Logout"
  ];
  List bools = [false, false, false, false, false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(
            height: 25,
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              'assets/person.png',
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundIcons(
                  icon: Icons.facebook_sharp,
                  color: Color.fromARGB(255, 4, 76, 135),
                ),
                RoundIcons(
                  icon: FontAwesomeIcons.google,
                  color: Colors.red,
                ),
                RoundIcons(
                  icon: FontAwesomeIcons.twitter,
                  color: Color.fromARGB(255, 44, 3, 166),
                ),
                RoundIcons(
                  icon: FontAwesomeIcons.linkedin,
                  color: Colors.lightBlueAccent,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Choromicle",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "@amFoss",
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Mobile App Developer and Open source enthusiastic",
            style: TextStyle(letterSpacing: 1.2, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 237, 236, 236),
            ),
            width: 330,
            height: 400,
            child: ListView.builder(
                itemCount: icons.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return ScrollButton(
                    leadingicon: icons[index],
                    title: titles[index],
                    trailingicon: bools[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
