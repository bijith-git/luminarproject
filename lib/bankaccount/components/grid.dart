// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GridTiles extends StatelessWidget {
  const GridTiles({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 5),
        height: size.height * 0.48,
        width: size.width,
        child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 3),
            children: [
              const Tiles(
                img: Icon(
                  Icons.account_balance,
                  color: Colors.red,
                  size: 50,
                ),
                text: 'My account',
              ),
              const Tiles(
                img: Icon(
                  Icons.folder_shared,
                  color: Colors.red,
                  size: 50,
                ),
                text: 'Load eSewa',
              ),
              const Tiles(
                img: Icon(
                  Icons.payments,
                  color: Colors.red,
                  size: 50,
                ),
                text: 'Payment',
              ),
              const Tiles(
                img: Icon(
                  Icons.receipt_long,
                  color: Colors.red,
                  size: 50,
                ),
                text: 'Fund transfer',
              ),
              const Tiles(
                img: Icon(
                  Icons.schedule_send,
                  color: Colors.red,
                  size: 50,
                ),
                text: 'Schedule transfer',
              ),
              const Tiles(
                img: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.red,
                  size: 50,
                ),
                text: 'Scan to pay',
              )
            ]));
  }
}

class Tiles extends StatelessWidget {
  const Tiles({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);
  final String text;
  final Widget img;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            img,
            const SizedBox(
              height: 20,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
