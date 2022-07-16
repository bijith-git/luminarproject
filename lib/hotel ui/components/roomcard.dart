// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RoomCard extends StatelessWidget {
  final String src;
  final String title;
  final String subtitle;
  final String price;
  const RoomCard({
    Key? key,
    required this.src,
    required this.title,
    required this.subtitle,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      margin: EdgeInsets.only(left: 50, right: 50, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 450,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                    image: NetworkImage(src),
                    fit: BoxFit.cover,
                    scale: 23,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "₹" + price,
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 108, top: 10),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              subtitle,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingBar.builder(
                itemSize: 20,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.green,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              Text("(220 Reviews)",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
