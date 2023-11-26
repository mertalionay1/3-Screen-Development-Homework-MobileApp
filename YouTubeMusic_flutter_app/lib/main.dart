import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Container katagori(String text) {
    return Container(
                      padding: EdgeInsets.only(bottom: 6, top:6,left: 12,right: 12   ),
                      margin: EdgeInsets.only(left: 3,right: 3   ),

                      decoration: BoxDecoration(color: Color.fromARGB(15, 255, 255, 255),
                      borderRadius: BorderRadius.circular(5),
                      border:Border.all(
                        color: Color.fromARGB(23, 255, 255, 255)
                      ) 
                      ),
                      child: Text(text,
                        style:TextStyle(
                          fontWeight:FontWeight.normal,
                          color: Colors.white
                        )
                        ),
                    );
  }

  Widget muzikler(String photo , String title , String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        Row(
                          children: [
                            Image.asset(photo, width: 70,),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title, style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ), ),
                                Text(artist
                                , style: TextStyle(
                                  color: const Color.fromARGB(255, 160, 160, 160),
                                  fontSize: 11,
    
                                ),)
                              ],
                            ),
                          ],
                        ) ,
                        Icon(Icons.more_vert, color: Colors.white,)
                      ],    
                    ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body:Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration:BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    const Color.fromRGBO(62, 36, 17, 1),
                    const Color.fromRGBO(48, 14, 32, 1)
                  ] 
                  )
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image.asset(width: 30,"assets/images/logo.png"),
                          SizedBox(width: 5,),
                          Text("Music",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 27 ),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.podcasts, color:Colors.white,),
                        SizedBox(width: 15,),
                        Icon(Icons.search, color:Colors.white,),
                        SizedBox(width: 15,),
                        CircleAvatar(radius: 13, backgroundImage: AssetImage("assets/images/P1.jpg"),),
                      ],
                    )       
                  
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      katagori("Energize"),
                      katagori("Work out"),
                      katagori("Feel good"),
                      katagori("Relaxation"),
                      katagori("Chil out"),
                      katagori("Rock"),
                      katagori("Pops"),
                    ],
                  ),
                ),                
              ],
            ),            
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Color.fromRGBO(7, 5, 8, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("START RADİO FROM A SONG",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 210, 210, 210),
                        fontSize: 12),
                      ),
                      Row(
                  
                        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                        children: [
                          Text("Quik Picks",
                          style: TextStyle(
                            color: Color.fromARGB(255, 247, 245, 245),
                            fontSize:20,
                            fontWeight: FontWeight.bold
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white
                              ),
                              borderRadius: BorderRadius.circular(14) 
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top:3, bottom: 3, left: 9, right: 9  ),
                              child: Text("Play all",
                                              style: TextStyle(
                                                color: const Color.fromARGB(255, 210, 210, 210),
                                                fontSize: 12),
                                              ),
                            ),
                          ),
                        ],
                      ),        
                      muzikler("assets/images/1.jpg","Moments","PaulWetz & Dillistone"),
                      muzikler("assets/images/2.jpg","Warrior","Oscar & The Wolf"),
                      muzikler("assets/images/3.jpg","Cymatics","Nigel Stanford"),
                      muzikler("assets/images/4.jpg","Burning Sun","Monolinl"),
                      muzikler("assets/images/5.jpg","Radio Open","Adele"),
                      muzikler("assets/images/6.jpg","Turk Marsı","Bethoven"),
                      muzikler("assets/images/7.jpg","Ask","Muslum Baba"),
                      muzikler("assets/images/8.jpg","Ayriligin Hediyesi","Ahmet Kaya"),
                      SizedBox(height: 20,),
                      Row(
                  
                        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                        children: [
                          Text("Forgotten favorites",
                          style: TextStyle(
                            color: Color.fromARGB(255, 247, 245, 245),
                            fontSize:20,
                            fontWeight: FontWeight.bold
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white
                              ),
                              borderRadius: BorderRadius.circular(14) 
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top:3, bottom: 3, left: 9, right: 9  ),
                              child: Text("Play all",
                                              style: TextStyle(
                                                color: const Color.fromARGB(255, 210, 210, 210),
                                                fontSize: 12),
                                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      SingleChildScrollView(
                        scrollDirection:Axis.horizontal,
                        
                        child: Row(
                          children: [
                            muzikler2("assets/images/1.jpg","Moments","PaulWetz & Dillistone"),
                            muzikler2("assets/images/5.jpg","Radio Open","Adele"),
                            muzikler2("assets/images/4.jpg","Burning Sun","Monolinl"),
                            muzikler2("assets/images/3.jpg","Cymatics","Nigel Stanford"),
                          ],
                        
                        ),
                      ),



                      
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              color: Color.fromRGBO(33, 33, 33, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Column(
                    children: [
                      Icon(Icons.home, color: Colors.white,),
                      Text("Home", style: TextStyle(color: Colors.white,fontSize: 10),)
                    ],
                  ),
                   Column(
                    children: [
                      Icon(Icons.play_circle, color: Colors.white,),
                      Text("Samples", style: TextStyle(color: Colors.white,fontSize: 10),)
                    ],
                  ),
                   Column(
                    children: [
                      Icon(Icons.explore, color: Colors.white,),
                      Text("Explore", style: TextStyle(color: Colors.white,fontSize: 10),)
                    ],
                  ),
                   Column(
                    children: [
                      Icon(Icons.subscriptions, color: Colors.white,),
                      Text("Libary", style: TextStyle(color: Colors.white,fontSize: 10),)
                    ],
                  ),
                   Column(
                    children: [
                      Icon(Icons.slideshow, color: Colors.white,),
                      Text("Upgrade", style: TextStyle(color: Colors.white,fontSize: 10),)
                    ],
                  ),
                ]
                ),
              ),
            ),

      ],)
      ),
    );
  }

  Padding muzikler2(String photo , String title , String artist) {
    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(photo ,width: 150),
                              SizedBox(height: 5,),
                              Text(title, style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ), ),
                                Text(artist, style : TextStyle(
                                  color: const Color.fromARGB(255, 160, 160, 160),
                                  fontSize: 11,
                        
                                ),)
                            
                            
                            ],
                          ),
                        ],
                      ),
                    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
