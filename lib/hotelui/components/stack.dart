import 'package:flutter/material.dart';

class StackSection extends StatelessWidget {
  const StackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.47,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                opacity: 0.8,
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cache.marriott.com/marriottassets/marriott/DELAL/delal-king-room-5932-hor-clsc.jpg?interpolation=progressive-bilinear&"),
              )),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: const Text(
            "DETAILS",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 20,
          child: Container(
            height: 60,
            width: 200,
            child: const Text(
              'Crown plaza \nKochi, Kerala',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
          bottom: 6,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(199, 147, 145, 145),
                borderRadius: BorderRadius.circular(20)),
            height: 40,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                '8.2/85 reviews',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 6,
            right: 20,
            child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
            ))
      ],
    );
  }
}
