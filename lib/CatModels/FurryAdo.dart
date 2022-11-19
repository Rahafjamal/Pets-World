// ignore_for_file: non_constant_identifier_names

import 'package:final_project/CatModels/AppBarTwo.dart';
import 'package:final_project/CatModels/CatListView.dart';
import 'package:final_project/Logic/animalapi.dart';
import 'package:final_project/Logic/containetLeft.dart';
import 'package:final_project/Screens/Drawer_screen.dart';
import 'package:final_project/Screens/drawerScreen.dart';

import 'package:final_project/Logic/containermidle.dart';
import 'package:final_project/model/HeaderCatScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class furryado extends StatefulWidget {
  const furryado({super.key});

  @override
  State<furryado> createState() => _furryadoState();
}

class _furryadoState extends State<furryado> with TickerProviderStateMixin {
  var Data;
  String type = "cat";
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
  void SearchData(search){
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


  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          endDrawer: DrawerScreen(
            SearchData: SearchData,
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
                      child: HeaderCatScreen(),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ])),
    );
  }
}
