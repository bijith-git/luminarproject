import 'package:flutter/material.dart';

class ReviewTile extends StatelessWidget {
  final String src;
  final String name;
  const ReviewTile({Key? key, required this.src, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 218, 214, 214)
                .withOpacity(0.7), //color of shadow
            spreadRadius: 2, //spread radius
            blurRadius: 7, // blur radius
            offset: Offset(0, 2), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Column(
            children: [
              ListTile(
                  leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        src,
                      )),
                  title: Text(name),
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, senon proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Text('4.5')
                ],
              )
            ],
          ),
          SizedBox(
            height: 23,
          ),
          Row(children: [
            Expanded(
              child: Container(
                height: 40,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "PROFILE",
                  style: TextStyle(color: Colors.black),
                )),
              ),
            ),
            Expanded(
              child: Container(
                height: 40,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "HIRE",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
