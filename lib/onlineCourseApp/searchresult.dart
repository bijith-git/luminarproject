import 'package:flutter/material.dart';
import 'package:luminarproject/onlineCourseApp/components/review.dart';


void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchResult(),
    ),
  );
}

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        flexibleSpace: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Search Result",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back),
                      ),
                      Text("Search")
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(Icons.tune),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(Icons.manage_search),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(Icons.more_vert),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        toolbarHeight: 100,
      ),
      body: Container(
        child: ListView(
          children: [
            ReviewTile(
              name:"james",
              src:
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/Vd3bj2jPe/videoblocks-closeup-excited-male-person-saying-wow-on-black-background-portrait-of-african-american-man-looking-at-camera-in-studio-emotional-afro-guy-posing-indoors_bbmtozmuv_thumbnail-1080_01.png",
            ),
            ReviewTile(
              name:"john",
                src:
                    "https://yt3.ggpht.com/a/AGF-l7-RJ3PUe6MdvERH0FYdZ14nSG1x6PNPzktj2w=s900-c-k-c0xffffffff-no-rj-mo")
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          backgroundColor: Colors.green,
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person_add), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: "")
          ]),
    );
  }
}
