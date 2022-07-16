import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class MyHomePage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);

  List photos = [
    "https://cdn.craigdailypress.com/wp-content/uploads/sites/10/2018/12/shutterstock_95664895-1240x744.jpg",
    "https://www.daltons.co.nz/sites/default/files/planting-guide/garden_vegetables_489515614lsmall.jpg",
    "https://www.oliversmarket.com/wp-content/uploads/2018/01/Fruit-Salad.jpg",
    "https://thumbs.dreamstime.com/b/mix-indian-spices-herbs-different-size-ceramic-bowls-white-red-yellow-green-copy-space-design-vegetables-107010189.jpg",
    "https://bkpk.me/wp-content/uploads/2012/03/20120324-DSC_0441.jpg",
    "https://www.foodbusinessnews.net/ext/resources/2019/6/BottledJuices_Lead.jpg?1560885836"
  ];
  List texts = [
    "Vegetables",
    "Fruits",
    "Fresh cuts",
    "Flavors",
    "Exotic fruits ",
    "juice"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.green,
              floating: true,
              pinned: true,
              snap: false,
              centerTitle: false,
              title: const Text('Farmers Fresh Zone'),
              actions: [
                IconButton(
                  icon: Icon(Icons.place),
                  onPressed: () {},
                ),
                const Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                    left: 0,
                    right: 15,
                  ),
                  child: Center(child: Text("kochi")),
                )
              ],
              bottom: AppBar(
                backgroundColor: Colors.green,
                title: Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for vegitable and fruits',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Other Sliver Widgets
            SliverList(
              delegate: SliverChildListDelegate([
                DefaultTabController(
                  length: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        ButtonsTabBar(
                          contentPadding: const EdgeInsets.all(10),
                          backgroundColor:
                              const Color.fromARGB(164, 105, 240, 175),
                          unselectedBackgroundColor:
                              const Color.fromARGB(141, 105, 240, 175),
                          unselectedLabelStyle:
                              const TextStyle(color: Colors.green),
                          labelStyle: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                          tabs: [
                            const Tab(text: "Vegetables"),
                            const Tab(text: "Exotic fruits "),
                            const Tab(text: "Fruits"),
                            const Tab(text: "Fresh cuts"),
                            const Tab(text: "Flavors"),
                            const Tab(text: "juice"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    child: Image.network(
                  "https://www.grocersapp.com/blog/wp-content/uploads/2019/07/How-can-you-make-your-online-grocery-shopping-app-stand-out_-GrocersApp.png",
                  fit: BoxFit.fitWidth,
                )),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.watch_later),
                              ),
                              const Text("30 min policy"),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.gps_fixed),
                              ),
                              const Text("tracebility"),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.local_florist),
                              ),
                              const Text("local sourcing"),
                            ],
                          ),
                        ),
                      ]),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Shop By Category",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                )
              ]),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150.0,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: NetworkImage(
                                photos[index],
                              ),
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.all(20),
                              child: Text(texts[index]))
                        ],
                      ));
                },
                childCount: photos.length,
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          items: [
            const BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.home),
            ),
            const BottomNavigationBarItem(
              label: "cart",
              icon: Icon(Icons.shopping_cart),
            ),
            const BottomNavigationBarItem(
              label: "Account",
              icon: Icon(Icons.account_circle),
            ),
          ],
        ));
  }
}
