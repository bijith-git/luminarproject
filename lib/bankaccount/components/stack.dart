// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  final Size size;
  const ProfileView({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: 80,
          color: Colors.red,
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23), color: Colors.yellow),
          child: Row(
            children: [
              CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 37,
                    backgroundImage: NetworkImage(
                        "https://images.genius.com/70b44d7b5a4be028e87b865dd425a4cc.1000x1000x1.jpg"),
                  )),
              SizedBox(
                width: 20,
              ),
              Positioned(
                left: 10,
                child: SizedBox(
                  height: size.height * 0.090,
                  width: size.width * 0.57,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Sammunati bachat katha'.toUpperCase(),
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'NPR. ',
                            style: TextStyle(color: Colors.red),
                          ),
                          Text(
                            '1.00,999.35',
                            style: TextStyle(
                                color: Color.fromARGB(255, 206, 26, 13),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.remove_red_eye,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      const Text(
                        '2829382937357',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
