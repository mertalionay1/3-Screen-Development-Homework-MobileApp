// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//post item function
  Container postItem(
          String avatar, String photo, String name, String location) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 0, left: 0, right: 0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 20,
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_horiz_rounded,
                    size: 50,
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Image.asset(photo)),
            // under post icons
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border_outlined,
                          size: 28, color: Colors.black87),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.chat_bubble_outline_rounded,
                          color: Colors.black87),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.flag_outlined, color: Colors.black87),
                ],
              ),
            ),
            // comment section
            CommentAdd("hermony1",
                "What a great view <3. I wish I was there too. This comment for testing comment expand."),
            CommentAdd(
                "mrpresident", "I saw USA Warship behind the tower lmao."),
          ]),
        ),
      );

// Comment add function
  Padding CommentAdd(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(children: [
                TextSpan(
                  text: name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 12,
                  ),
                ),
                TextSpan(text: "   "),
                TextSpan(
                  text: comment,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 12),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  //widgets - Story add function

  Widget storyWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.black87,
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(214, 71, 108, 1),
                  Color.fromARGB(241, 166, 117, 214),
                  Color.fromARGB(255, 11, 44, 231)
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 34,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Column(
        children: [
          //top bar
          Container(
            width: double.infinity,
            height: 80,
            //appbar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //insta logo
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset("assets/images/mainlogo.png", width: 120),
                ),
                
                //right icon side
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 0, top: 4, left: 6, bottom: 4),
                      child: Icon(Icons.add_circle,
                          color: Colors.black87, size: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Icon(Icons.favorite, color: Colors.black87, size: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.send, color: Colors.black87, size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //middle bar
          Expanded(
              child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      //you can add story here
                      children: [
                        storyWidget("assets/images/p1.jpg", "natalie06"),
                        storyWidget("assets/images/p2.jpg", "jacksonnn"),
                        storyWidget("assets/images/p3.jpg", "hermonygr"),
                        storyWidget("assets/images/p4.jpg", "mrpresident"),
                        storyWidget("assets/images/p5.png", "danielalcano"),
                        storyWidget("assets/images/p6.webp", "r6boyyy"),
                        storyWidget("assets/images/p7.webp", "m4obsession"),
                        storyWidget("assets/images/p8.png", "lookmyeyes"),
                      ],
                    ),
                  ),
                  //you can add new post here
                  postItem("assets/images/p1.jpg", "assets/images/galata.webp",
                      "natalie06", "Galata Kulesi"),
                  postItem("assets/images/p6.webp", "assets/images/p6.webp",
                      "r6boyyy", "German Autobahn"),
                  postItem("assets/images/p7.webp", "assets/images/p7.webp",
                      "m4obsession", "Nurburgring"),
                  postItem("assets/images/p4.jpg", "assets/images/warship.jpg",
                      "mrpresident", "Pacific Ocean"),
                ],
              ),
            ),
          )),
          //bottom bar
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color.fromARGB(50, 0, 0, 0)),
            ),
            //bottom menu logos
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.search_rounded,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.smart_display,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.favorite,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.person,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
