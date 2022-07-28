import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  final String title;
  final Color color;
  final bool show;
  const ListTiles(
      {Key? key, required this.title, required this.color, required this.show})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(23)),
      margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
      height: 150,
      child: Center(
        child: Text(title,
            style: TextStyle(
                fontSize: 18,
                color: show ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
