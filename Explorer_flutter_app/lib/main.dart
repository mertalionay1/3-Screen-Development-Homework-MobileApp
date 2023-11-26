// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void runApp(MyApp myApp) {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Explore App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 251, 251, 251),
          body: Column(
            children: [
              Header(),
              Expanded(
                  child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(children: [
                    SearchBox(),
                    Divider(),
                    TopLocations(),
                    Divider(),
                    NearLocations(),
                    Divider(),
                    Suggestion(),
                    Divider(),
                    TopRated()
                  ]),
                ),
              )),
              BottomMenu(),
            ],
          ),
        ));
  }

  Widget Suggestion() => Container(
        child: Column(
          children: [
            TitleItem("Suggestion", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/caddebostan.jpg",
                      "Caddebostan Sahil", "27 km for you", "₺ 38.0"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/bebek.webp", "Bebek Sahil",
                      "34 km for you", "₺ 49.0"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/galata.webp", "Galata Kulesi",
                      "11 km for you", "₺ 102.0"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/sarnic.jpg", "Yerebatan Sarnici",
                      "8 km for you", "₺ 52.0"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget TopRated() => Container(
        child: Column(
          children: [
            TitleItem("TopRated", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/caddebostan.jpg",
                      "Caddebostan Sahil", "27 km for you", "₺ 38.0"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/bebek.webp", "Bebek Sahil",
                      "34 km for you", "₺ 49.0"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/galata.webp", "Galata Kulesi",
                      "11 km for you", "₺ 102.0"),
                  SizedBox(
                    width: 5,
                  ),
                  LocationItem("assets/images/sarnic.jpg", "Yerebatan Sarnici",
                      "8 km for you", "₺ 52.0"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget NearLocations() => Container(
        child: Column(
          children: [
            TitleItem("Near You", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/galata.webp", "Galata Koprusu",
                      "10 km for you", "₺ 102.0"),
                  LocationItem("assets/images/pierre.jpg", "Pierre Loti Tepesi",
                      "7 km for you", "₺ 55.0"),
                  LocationItem("assets/images/sarnic.jpg", "Yerebatan Sarnici",
                      "8 km for you", "₺ 90.0"),
                  LocationItem("assets/images/caddebostan.jpg",
                      "Caddebostan Sahili", "27 km for you", "₺ 38.0"),
                  LocationItem("assets/images/galata.webp", "Istanbul",
                      "20 km for you", "₺53"),
                  LocationItem("assets/images/galata.webp", "Istanbul",
                      "20 km for you", "₺ 52"),
                ],
              ),
            )
          ],
        ),
      );
  Widget LocationItem(String photo, String city, String far, String price) =>
      Container(
          width: 195,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(0, 170, 170, 170)),
          ),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(width: 185, photo)),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_pin, size: 11),
                          Text(
                            far,
                            style: TextStyle(fontSize: 9, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      padding:
                          EdgeInsets.only(top: 5, bottom: 5, left: 7, right: 7),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        price,
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      )),
                ],
              ),
            ],
          ));
  Widget TopLocations() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleItem("Top Locations", "Viewall"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItems("assets/images/bebek.webp", "Bebek"),
                  StoryItems("assets/images/kadıköy.jpg", "Kadıköy"),
                  StoryItems("assets/images/istinye.jpg", "İstinye"),
                  StoryItems("assets/images/üsküdar.jpg", "Üsküdar"),
                  StoryItems("assets/images/avcilar.jpg", "Avcılar"),
                  StoryItems("assets/images/macka.webp", "Maçka"),
                  StoryItems("assets/images/yenikspi.jpg", "Yenikapı"),
                  StoryItems("assets/images/pierre.jpg", "Haliç"),
                  StoryItems("assets/images/gokturk.jpg", "Göktürk"),
                  StoryItems("assets/images/maltepe.jpg", "Maltepe"),
                  StoryItems("assets/images/beykoz.jpg", "Beykoz"),
                  StoryItems("assets/images/yakuplu.jpg", "Yakuplu"),
                  StoryItems("assets/images/basaksehir.jpg", "Başakşehir"),
                  StoryItems("assets/images/fatih.jpg", "Fatih"),
                  StoryItems("assets/images/camlica.jpg", "Çamlıca"),
                ],
              ),
            )
          ],
        ),
      );

  Widget StoryItems(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 241, 156, 101),
                Color.fromARGB(255, 233, 92, 70)
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 250, 250),
                  shape: BoxShape.circle),
              child: CircleAvatar(
                radius: 32,
                child: ClipOval(
                  child: Image.asset(photo, fit: BoxFit.cover),
                ),
                backgroundImage: AssetImage(photo),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153),
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Text(
            link,
            style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color.fromARGB(76, 170, 170, 170)),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Hürriyet , Gaziosmanpaşa",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              size: 17,
              color: Colors.orange,
            )
          ],
        ),
      );
  Widget Header() => Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome MertAli",
                  style: TextStyle(
                      color: Color.fromARGB(255, 153, 153, 153),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3),
                Text(
                  "Explore Istanbul City",
                  style: TextStyle(
                      color: Color.fromARGB(255, 56, 56, 56),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.sunny,
                      size: 18,
                      color: Colors.orange,
                    )),
                SizedBox(
                  width: 3,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.notifications,
                      size: 18,
                    )),
              ],
            ),
          ],
        ),
      );

  Widget BottomMenu() => Container(
        width: double.infinity,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomMenuItem("Home", Icons.home, true),
            BottomMenuItem("Moments", Icons.groups, false),
            HighLightItem("Book", Icons.maps_ugc),
            BottomMenuItem("Chat", Icons.forum, false),
            BottomMenuItem("Profile", Icons.person, false),
          ],
        ),
      );

  Padding BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 174, 1);
    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    } else {}
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 28,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 10, color: renk),
          )
        ],
      ),
    );
  }

  Padding HighLightItem(String title, IconData icon) {
    var renk = Color.fromRGBO(236, 125, 87, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 32,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15, color: renk),
          )
        ],
      ),
    );
  }
}
