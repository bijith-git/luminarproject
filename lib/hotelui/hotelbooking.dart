import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotelBooking(),
    ),
  );
}

class HotelBooking extends StatefulWidget {
  HotelBooking({Key? key}) : super(key: key);

  @override
  State<HotelBooking> createState() => _HotelBookingState();
}

class _HotelBookingState extends State<HotelBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          Container(
            width: 23,
            height: 34,
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.QbfEXpbmjZN6yCcCWy3OZQHaE7%26pid%3DApi&f=1",
                // height: 10,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        title: Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hello Bijith",
                  textAlign: TextAlign.start,
                ),
                Text("Find Your Favorite Hotel")
              ],
            ),
          ]),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 20, right: 20),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  spreadRadius: 6,
                  blurRadius: 8,
                  offset: Offset(0, 0)),
            ], color: Colors.red, borderRadius: BorderRadius.circular(13)),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  border: InputBorder.none,
                  focusColor: Colors.grey,
                  fillColor: Colors.grey,
                  hintText: "Search For Hotels"),
            ),
          )
        ],
      ),
    );
  }
}
