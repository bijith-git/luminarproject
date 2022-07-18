import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:luminarproject/hotelui/components/stack.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelDesc(),
  ));
}

class HotelDesc extends StatefulWidget {
  const HotelDesc({Key? key}) : super(key: key);

  @override
  State<HotelDesc> createState() => _HotelDescState();
}

class _HotelDescState extends State<HotelDesc> {
  var dollor = new String.fromCharCodes(new Runes('\u0024'));
  static const String description =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            StackSection(),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
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
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Text(dollor + "200",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 7, 146, 232),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              direction: Axis.horizontal,
                              spacing: 3,
                              children: const [
                                Icon(
                                  Icons.location_on,
                                  size: 17,
                                  color: Colors.grey,
                                ),
                                Text(
                                  '8km to Lulu Mall',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                )
                              ],
                            ),
                            const Text(
                              '/per night',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 7, 146, 232),
                              Color.fromARGB(255, 7, 146, 232).withOpacity(0.8)
                            ]),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Book Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    )),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'DESCRIPTION',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    description,
                    style: TextStyle(fontSize: 15, letterSpacing: .4),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          items: [
            const BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            const BottomNavigationBarItem(
              label: "Favorites",
              icon: Icon(Icons.favorite),
            ),
            const BottomNavigationBarItem(
              label: "Setting",
              icon: Icon(Icons.settings),
            ),
          ],
        ));
  }
}
