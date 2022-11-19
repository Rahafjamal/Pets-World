// ignore_for_file: non_constant_identifier_names

import 'package:final_project/CatModels/AppBarOne.dart';
import 'package:final_project/CatModels/AppBarTwo.dart';
import 'package:final_project/CatModels/BirdAdo.dart';
import 'package:final_project/CatModels/CatListView.dart';
import 'package:final_project/Logic/animalapi.dart';
import 'package:final_project/Logic/containetLeft.dart';
import 'package:final_project/Screens/Drawer_screen.dart';
import 'package:final_project/Screens/drawerScreen.dart';
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

  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            endDrawer: DrawerScreen(
              Data: Data,
              FilterData: FilterData,
              type: type,
            ),
            appBar: const AppBarTwo(),
            drawer: Drawer_screen(),
            body: Stack(children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.amber[600],
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                        ),
                        color: Colors.white,
                      ),
                      child: Container(
                        height: 180,
                        width: double.infinity,
                        child: HeaderBirdScreen(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: containerN(
                                  OnTapping: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return CatTypes();
                                    }));
                                  },
                                  name: 'Types'),
                            ),
                            SizedBox(width: 15),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: containerN(
                                  OnTapping: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return birdado();
                                    }));
                                  },
                                  name: 'Are YOU Redy for adopt !'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: containerN(OnTapping: () {}, name: ''),
                          ),
                          SizedBox(width: 15),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: containerN(OnTapping: () {}, name: ''),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ])));
  }
}
