// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BoxedIcons extends StatelessWidget {
  final IconData icons;
  final String title;
  final Color color;
  const BoxedIcons({
    Key? key,
    required this.icons,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 80,
        width: 100,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              icons,
              color: Colors.white,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ]),
        ));
  }
}
