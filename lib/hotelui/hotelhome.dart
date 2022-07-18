import 'package:flutter/material.dart';
import 'package:luminarproject/hotelui/components/components.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelHome(),
  ));
}

class HotelHome extends StatefulWidget {
  const HotelHome({Key? key}) : super(key: key);

  @override
  State<HotelHome> createState() => _HotelHomeState();
}

class _HotelHomeState extends State<HotelHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            leading: Icon(Icons.menu),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.favorite_outline),
              )
            ],
            expandedHeight: 200,
            backgroundColor: Colors.cyan,
            flexibleSpace: ListView(
              children: [
                SizedBox(height: 70),
                Text(
                  "Type your location",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Kakkand Kochi",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search))),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BoxedIcons(
                  title: "hotel",
                  color: Colors.red,
                  icons: Icons.hotel,
                ),
                BoxedIcons(
                  title: "Restaurant",
                  color: Colors.blue,
                  icons: Icons.restaurant,
                ),
                BoxedIcons(
                  title: "Cafe",
                  color: Colors.orange,
                  icons: Icons.local_cafe,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: RoomCard(
              src:
                  "https://cache.marriott.com/marriottassets/marriott/GNVAC/gnvac-guestroom-0013-hor-clsc.jpg?interpolation=progressive-bilinear&",
              title: "Awesome room near kochi",
              subtitle: "kakkanad",
              price: "400",
            ),
          ),
          SliverToBoxAdapter(
            child: RoomCard(
              src:
                  "https://cache.marriott.com/marriottassets/marriott/GNVAC/gnvac-guestroom-0013-hor-clsc.jpg?interpolation=progressive-bilinear&",
              title: "Awesome room near kochi",
              subtitle: "kakkanad",
              price: "400",
            ),
          ),
          SliverToBoxAdapter(
            child: RoomCard(
              src:
                  "https://cache.marriott.com/marriottassets/marriott/GNVAC/gnvac-guestroom-0013-hor-clsc.jpg?interpolation=progressive-bilinear&",
              title: "Awesome room near kochi",
              subtitle: "kakkanad",
              price: "400",
            ),
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
      ),
    );
  }
}
