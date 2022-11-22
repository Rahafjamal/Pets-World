// ignore_for_file: non_constant_identifier_names

import 'package:final_project/Adopt/BirdAdo.dart';
import 'package:final_project/CatModels/AppBarOne.dart';
import 'package:final_project/CatModels/AppBarTwo.dart';
import 'package:final_project/CatModels/BirdAdo.dart';
import 'package:final_project/CatModels/CatListView.dart';
import 'package:final_project/Logic/URL.dart';
import 'package:final_project/Logic/animalapi.dart';
import 'package:final_project/Logic/containetLeft.dart';
import 'package:final_project/Screens/Drawer_screen.dart';
import 'package:final_project/Screens/drawerScreen.dart';
import 'package:final_project/Shop/HomePage.dart';
import 'package:final_project/Types/CatTypes.dart';
import 'package:final_project/model/HeaderBirdScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class BirdScreen extends StatefulWidget {
  const BirdScreen({super.key});

  @override
  State<BirdScreen> createState() => _BirdScreenState();
}

class _BirdScreenState extends State<BirdScreen> with TickerProviderStateMixin {
  var Data;
  String type = "bird";
  var storage = FlutterSecureStorage();
  @override
  void initState() {
    // TODO: implement initState
    BetFinderApi myobject = BetFinderApi();

    myobject.get(type, storage).then((value) {
      setState(() {
        Data = value;
      });
    });
    super.initState();
  }

  void FilterData(params, filter) {
    setState(() {
      Data = null;
    });
    FilterAnimal object = FilterAnimal();
    object.get(type, storage, filter, params).then((value) {
      setState(() {
        Data = value;
      });
    });
  }

  void PaginationData(page) {
    setState(() {
      Data = null;
    });
    ChangePagination myobject = ChangePagination();
    myobject.get(page, storage, type).then((value) {
      setState(() {
        Data = value;
      });
    });
  }

  void SearchData(search) {
    setState(() {
      Data = null;
    });
    SearchAnimal myobject = SearchAnimal();
    myobject.get(type, storage, search).then((value) {
      setState(() {
        Data = value;
      });
    });
  }

  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    TabController tabController = TabController(length: 2, vsync: this);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: CatAppBar(),
            drawer: Drawer_screen(),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                    width: width,
                    height: height,
                    child: Stack(fit: StackFit.loose, children: [
                      Container(
                        width: width,
                        height: height,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Color.fromARGB(255, 156, 182, 255),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width / 10,
                        height: 1.5 * height / 7,
                        width: width - (width / 5),
                        top: 2 * height / 45,
                        child: Card(
                          shadowColor: Colors.blue[900],
                          elevation: 8,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 129, 162, 255),
                                  Color.fromARGB(255, 129, 162, 255),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: width / 2.8,
                          width: width - (width / 4.5),
                          top: height / 65,
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: SizedBox(
                                width: width / 15,
                                height: height / 4.5,
                                child:
                                    Image(image: AssetImage('images/b5.png'))),
                          )),
                      Positioned(
                          left: width / 7,
                          height: 2 * height / 7,
                          top: 4 * height / 45,
                          child: Text(
                            'Hello Sweety !',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Comfortaa-VariableFont_wght',
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Positioned(
                          left: width / 7,
                          height: 2 * height / 7,
                          top: 6 * height / 45,
                          child: Text(
                            'Welcome in Birds Land',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Comfortaa-VariableFont_wght',
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Positioned(
                        left: width / 7,
                        height: 2 * height / 7,
                        top: 4 * height / 45 + 1.5 * height / 7,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: containerN(
                                  OnTapping: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return CatTypes(
                                          type: type,
                                          defaultImage:
                                              'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg');
                                    }));
                                  },
                                  name: 'Typs'),
                            ),
                            SizedBox(width: 15),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: containerN(
                                  OnTapping: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Birdado();
                                    }));
                                  },
                                  name: 'Are YOU Redy for adopt !'),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: width / 7,
                        height: 2 * height / 7,
                        top:
                            4 * height / 45 + 1.5 * height / 7 + 2 * height / 7,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: containerN(
                                  OnTapping: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return URLclass(myfunction: birdUrl);
                                    }));
                                  },
                                  name: 'Vacination schedule'),
                            ),
                            SizedBox(width: 15),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: containerN(
                                  OnTapping: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return HomeScreen(
                                        type: type,
                                      );
                                    }));
                                  },
                                  name: ' '),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          left: width / 1.925,
                          width: width / 3.5,
                          height: height / 3.7,
                          top: 4 * height / 45 +
                              1.5 * height / 7 +
                              height / 7 +
                              2 * height / 14,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomeScreen(
                                  type: type,
                                );
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: SizedBox(
                                  width: width / 4,
                                  height: height / 4,
                                  child: Image(
                                      image: AssetImage('images/shop.png'))),
                            ),
                          )),
                    ])),
              ]),
            )));
  }
}
