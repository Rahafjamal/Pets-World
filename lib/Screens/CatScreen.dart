import 'package:final_project/Logic/animalapi.dart';
import 'package:final_project/Logic/containerright.dart';
import 'package:final_project/Logic/containetLeft.dart';
import 'package:final_project/Screens/DogScreen.dart';
import 'package:final_project/Screens/drawerScreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';

import '../main.dart';

class CatScreen extends StatefulWidget {
  const CatScreen({super.key});
  static final String title = 'Card Example';

  @override
  State<CatScreen> createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> with TickerProviderStateMixin {
  List persons = ["1 ", "2 ", "2-6 "];
  String myselcteditem = "1 ";

  List Data = [];
  @override
  void initState() {
    // TODO: implement initState
    BreakingBad myobject = BreakingBad();
    myobject.get().then((value) {
      print(value);
      setState(() {
        Data = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset(
                "images/R.png",
                width: 30,
              ),
            ),
          ),
        ),
        drawer: DrawerScreen(),
        body: ListView(children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    child: Image.asset(
                      "images/cool.png",
                      scale: 3,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 70, top: 100),
                        child: Text(
                          "Hello Sweety !",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Row(children: const [
                Text(
                  "Welcome in Cat Kingdom ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ])),
          SizedBox(height: 20),
          Column(children: [
            Row(
              children: const [
                Text(
                  " ",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            TabBar(
              controller: _tabController,
              tabs: [
                Text(
                  "Tybs",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Tybs",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Tybs",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Tybs",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                DropdownButton(
                    value: myselcteditem,
                    items: persons
                        .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              "$e",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.brown[700],
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'DancingScript'),
                            )))
                        .toList(),
                    onChanged: ((val) {
                      setState(() {
                        myselcteditem = val.toString();
                      });
                    })),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.all(7),
                width: double.infinity,
                height: 510,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView(
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'If life were predictable it would cease to be life, and be without flavor.',
                                  style: TextStyle(fontSize: 24),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'Eleanor Roosevelt',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                            width: double.infinity,
                            child: CarouselSlider.builder(
                                options: CarouselOptions(
                                  aspectRatio: 2.0,
                                  enlargeCenterPage: true,
                                  autoPlay: true,
                                ),
                                itemCount: Data.length,
                                itemBuilder: (context, index, realIndex) {
                                  return Card(
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Ink.image(
                                          image: NetworkImage(
                                            Data[index]["image_link"],
                                          ),
                                          child: InkWell(
                                            onTap: () {},
                                          ),
                                          height: 240,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  );
                                })),
                        SizedBox(height: 15),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rounded card',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'This card is rounded',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Card(
                          shadowColor: Colors.red,
                          elevation: 8,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Colored card',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'This card is rounded and has a gradient',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(children: [
                              Stack(
                                children: [
                                  Ink.image(
                                    image: NetworkImage(
                                      'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
                                    ),
                                    height: 240,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    bottom: 16,
                                    right: 16,
                                    left: 16,
                                    child: Text(
                                      'Cats rule the world!',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ])),
                      ],
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ],
                )),
          ])
        ]));
  }
}
