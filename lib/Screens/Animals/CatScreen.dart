// ignore_for_file: non_constant_identifier_names

import 'package:final_project/CatModels/AppBarTwo.dart';
import 'package:final_project/CatModels/CatListView.dart';
import 'package:final_project/Logic/animalapi.dart';
import 'package:final_project/Screens/Drawer_screen.dart';
import 'package:final_project/Screens/drawerScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CatScreen extends StatefulWidget {
  const CatScreen({super.key});

  @override
  State<CatScreen> createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> with TickerProviderStateMixin {
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
    TabController tabController = TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        endDrawer: DrawerScreen(
          Data: Data,
          SearchData: SearchData,
          FilterData: FilterData,
          type: type,
        ),
        appBar: const AppBarTwo(),
        drawer: Drawer_screen(),
        body: CatListView(
          tabController: tabController,
          Data: Data,
          type: type,
          FilterData: FilterData,
          PaginationData: PaginationData,
        ),
      ),
    );
  }
}
