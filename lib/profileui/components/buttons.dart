import 'package:flutter/material.dart';

class ScrollButton extends StatelessWidget {
  final IconData leadingicon;
  final bool trailingicon;
  final String title;
  const ScrollButton(
      {Key? key,
      required this.leadingicon,
      required this.trailingicon,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 192, 182, 182),
          borderRadius: BorderRadius.circular(60)),
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      padding: EdgeInsets.all(20),
      // width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(leadingicon),
            SizedBox(
              width: 10,
            ),
            Text(title),
          ],
        ),
        trailingicon
            ? SizedBox(
                width: 34,
              )
            : Icon(Icons.arrow_forward_ios_sharp),
      ]),
    );
  }
}
